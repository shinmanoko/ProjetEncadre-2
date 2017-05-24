#! /usr/bin/Python

import os, sys
import glob
import xml.dom.minidom
from PIL import Image


xml_file=open(('SentenceAlignmentConfidenceAnnotation.xml'), 'w')
xml_file.write('<?xml version="1.0" encoding="UTF-8"?>\n')
xml_file.write('<SentenceAlignmentConfidenceAnnotation>\n')

txt_dir = "txt/"
fileList=os.listdir(txt_dir)

for fichier in fileList:
	gt = open(txt_dir+fichier).read().splitlines()
	for i in range(len(gt)):
		nb = i%5
		if nb == 1:
			xml_file.write('	<ID>\n')
			xml_file.write('        '+gt[i-1]+'\n')
			xml_file.write('	</ID>\n')
			xml_file.write('	<Volets>\n')
			xml_file.write('		<En>\n')
			xml_file.write('            '+gt[i]+'\n')
			xml_file.write('		</En>\n')
			xml_file.write('		<Fr>\n')
			xml_file.write('            '+gt[i+1]+'\n')
			xml_file.write('		</Fr>\n')
			xml_file.write('	</Volets>\n')
			xml_file.write('	<Annotations>\n')
			xml_file.write('	  <annotation1>\n')
			xml_file.write('            '+gt[i+2]+'\n')
			xml_file.write('	  </annotation1>\n')
			xml_file.write('	  <annotation2>\n')
			xml_file.write('            '+gt[i+3]+'\n')
			xml_file.write('	  </annotation2>\n')
			xml_file.write('	</Annotations>\n')

xml_file.write('</SentenceAlignmentConfidenceAnnotation>\n')

