#! /usr/bin/env python3
import argparse
import os
import re
import yaml

def translate(svg, filepath_translation):
    print(111)
    with open(filepath_translation) as f:
        dict_translation = yaml.safe_load(f)
    print(dict_translation)

def main():
    parser = argparse.ArgumentParser(description='Generate the wallpapers cheatsheep from the directory src. Merge the data file (in yml) and visual svg.')
    args = parser.parse_args()
    
    entries = os.listdir('../src')
    for entry in entries:
        regex_search = re.search('^(.*)\.svg$', entry)
        if regex_search:
            directory = regex_search.group(1)
            translations_dir = '../src/{}'.format(directory)
            if os.path.isdir(translations_dir):
                translations = os.listdir(translations_dir)
                for translation in translations:
                    print(translation)
                    if re.search('^(.*)\.y[a]?ml$', translation):
                        translate(entry, translations_dir + '/' + translation)
            

if __name__ == "__main__":
    main()