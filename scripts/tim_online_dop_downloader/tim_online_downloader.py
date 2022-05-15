# SPDX-License-Identifier: GPL-3.0-or-later

import sys
import urllib.request
from tqdm import tqdm

if not len(sys.argv) == 2:
    print("Invalid parameters. You need to pass the path to metadata txt only.")
    sys.exit(1)

with open(sys.argv[1], 'r') as file:
    content = file.readlines()[11:]  # Content always starts at line 11
    for line in tqdm(content):
        tokens = line.split(";")
        assert len(tokens) == 2
        name = tokens[0]
        url = tokens[1][1:]
        urllib.request.urlretrieve(url, name + ".tiff")
