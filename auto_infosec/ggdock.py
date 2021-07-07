import argparse
import json
from os import link
import requests
from typing import Dict

baseurl = 'https://www.googleapis.com/customsearch/v1'
quite = False

def print_message(message: str):
    """
    Print message to STDOUT if the quiet option is set to False (this is the default).
    :param message: message to print
    :return: None
    """
    global quite
    if not quite:
        print(message)

def do_search(key: str, engine_id: str, dorks_file: str) -> Dict:
    """
    Perform Google dork searches specified in given dorks file against custom search API
    :param key: custom search API key
    :param engine_id: custom search engine ID
    :param dorks_file: JSON file containing dorks to try
    :return: dictionary containing results.
    """

    global baseurl
    params = {'key':key, 'cx': engine_id}
    with open(dorks_file,'r') as f:
        dorks = json.load(f)
    links = {}
    for k,v in dorks.items():
        print_message('##### Trying dorks from category"{}". #####'.format(k))
        links[k] = []
        for d in v:
            description = d['description']
            dork = d['dork']
            print_message('### Trying dork for "{}". ###'.format(description))
            start_index = 1
            params['q'] = dork
            results = []
            while True:
                params['start'] = start_index
                response = requests.get(baseurl, params=params).json()
                if 'items' not in response:
                    break
                results.extend([link['link'] for link in response['items']])
                if 'nextPage' not in response['queries']:
                    break
                start_index = response['queries']['nextPage'][0]['items']
            links[k].extend(results)
    return links

def main():
    global quite
    parser = argparse.ArgumentParser(description='A tool to automate common Google dork searches ')
    parser.add_argument('-k', '--api-key', required=True, help='API key')
    parser.add_argument('-e', '--engine-id', required=True, help='Google custom search engine ID')
    parser.add_argument('dorks_file', help='JSON file containing Google dorks to test')
    parser.add_argument('-o', '--output', help='Output file to write to')
    parser.add_argument('-f','--format',help='Output format (default is json)', default='json',)
    parser.add_argument('-q', '--quiet', help='Do not print informative message', action='store_')
    args = parser.parse_args()

    output = args.output
    output_format = args.format
    quite = args.quite
    api_key = args.api_key
    engine_id = args.engine_id
    dorks_file = args.dorks_file

    

