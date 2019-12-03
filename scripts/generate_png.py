#! /usr/bin/env python3

# TODO: import argparse
import os
import re
import yaml
import lxml.etree as etree


def translate(filepath_svg, filepath_transl, base_dir, svg_name, lang_code):
    with open(filepath_transl) as f:
        dict_translation = yaml.safe_load(f)

    svg_xml = etree.parse(filepath_svg)
    svg_root = svg_xml.getroot()

    # lxml fails with namespace default
    #    (without namespace ex tspan instead svg:tspan)
    hack_ns = svg_root.nsmap
    hack_ns['_default'] = hack_ns.pop(None)

    for index, item in dict_translation.items():
        select = '//_default:*[@id="{}"]'.format(index)
        svg_subtree = svg_root.xpath(select, namespaces=hack_ns)[0]
        if type(item) == list:
            list_text_tag = svg_subtree.findall('_default:tspan', hack_ns)
            for text_tag in list_text_tag:
                translation = item.pop(0)
                text_tag.text = translation
        else:
            text_tag = svg_subtree.find('_default:tspan', hack_ns)
            text_tag.text = item
    destination_file = "{}/{}.{}.svg".format(base_dir, svg_name, lang_code)
    with open(destination_file, 'w') as f:
        f.write(etree.tostring(svg_xml, encoding='unicode'))


def main():
    # TODO:
    # parser = argparse.ArgumentParser(
    #    description='Generate the wallpapers cheatsheep from ' +
    #    'the directory src. Merge the data file (in yml) and visual svg.')
    # args = parser.parse_args()

    base_dir = '../src'

    svg_files = os.listdir(base_dir)
    for svg_file in svg_files:
        regex_search = re.search('^(.*)[.]svg$', svg_file)
        if regex_search:
            svg_name = regex_search.group(1)
            translations_dir = '{}/{}'.format(base_dir, svg_name)
            if os.path.isdir(translations_dir):
                translations_files = os.listdir(translations_dir)
                for translations_file in translations_files:
                    yaml_reg = '^(.*)[.]y[a]?ml$'
                    regex_search = re.search(yaml_reg, translations_file)
                    if regex_search:
                        lang_code = regex_search.group(1)
                        translate(
                            base_dir + '/' + svg_file,
                            translations_dir + '/' + translations_file,
                            base_dir, svg_name,
                            lang_code)


if __name__ == "__main__":
    main()
