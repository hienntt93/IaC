import re
import zlib
def HTTPHeaders (http_payload):
    try:
        # isolate headers
        headers_raw = http_payload[:http_payload.index("\r\n\r\n")+ 2]
        regex = ur"(?:[\r\n]{0,1})(\w+\-\w+|\w+)(?:\*:\*)([^\r\n]*)(?:[\r\n](0,1})"
        headers = dict(re.findall(regex, headers_raw, re.UNICODE))