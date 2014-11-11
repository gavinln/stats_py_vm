from __future__ import print_function
from IPython.html import widgets
from IPython.display import display
from IPython.utils.traitlets import link

import os
import time
import csv
import collections
import pandas as pd
import datetime

# example of links within IPython notebook
# http://nbviewer.ipython.org/github/rasbt/python_reference/blob/master/tutorials/table_of_contents_ipython.ipynb#top


def existsFile(fileName):
    fullFileName = os.path.join('.', fileName)
    return os.path.exists(fullFileName)


def isFile(fileName):
    fullFileName = os.path.join('.', fileName)
    return os.path.isfile(fullFileName)


def getCsvInfo(fileName):
    fileName = 'test.csv'
    with open(fileName, 'r') as csvFile:
        reader = csv.reader(csvFile, dialect='excel')
        headers = reader.next()
        for row in reader:
            pass
        return (reader.line_num, headers)


def getDownloadResultLink(fileName):
    if fileName:
        msg = ''.join(['<p>Save <a href="%s">%s</a> by ',
              'clicking the right mouse button ',
              'and selecting <i>Save link as</i></p>'])
        return msg % (fileName, fileName)
    return ''


class DialogGroup(object):
    def __init__(self):
        self.inputFile = None
        self.resultWidget = None

    def displayFileDialog(self):
        self.inputFile = widgets.TextWidget(
            description='Input file name (csv)')
        button = widgets.ButtonWidget(description="Process file")
        display(self.inputFile, button)
        processCsvFileFn = lambda fileName: self.processCsvFile()
        button.on_click(processCsvFileFn)

    def processCsvFile(self):
        if not self.inputFile:
            return
        if len(self.inputFile.value) == 0:
            print('No file name specified')
        elif not existsFile(self.inputFile.value):
            print('File %s does not exist' % self.inputFile.value)
        elif not isFile(self.inputFile.value):
            print('File %s is not a valid file' % self.inputFile.value)
        else:
            # process input file
            print('Processing input file %s' % self.inputFile.value, end='')
            for i in range(5):
                print('.', end='')
                time.sleep(1)
            print('done')
            lineCount, fieldNames = getCsvInfo(self.inputFile.value)
            if self.resultWidget:
                fileInfo = collections.OrderedDict([
                    ('Record count', lineCount),
                    ('Column count', len(fieldNames)),
                    ('Field names', ','.join(fieldNames))
                ])
                self.resultWidget.values = fileInfo
            if self.resultLink:
                df = pd.DataFrame(
                    {'Seasons': ['Spring', 'Summer', 'Fall', 'Winter'],
                     'Temperature': [45, 70, 39, 25]}
                )
                #df.to_csv('result.csv')
                currentTime = datetime.datetime.now()
                fileNameTime = currentTime.strftime(
                    "result_%Y-%m-%d_%H%M%S.csv")
                self.resultLink.value = getDownloadResultLink(fileNameTime)

    def displayResultsDialog(self):
        self.resultWidget = widgets.SelectWidget(
            description='File info:',
            values=[]
        )
        fileDetail = widgets.TextWidget(
            description='Detail'
        )
        self.resultLink = widgets.HTMLWidget(
            value=getDownloadResultLink(None)
        )

        def updateFileDetail(item, value):
            fileDetail.value = unicode(value)

        self.resultWidget.on_trait_change(updateFileDetail, 'value')
        display(self.resultWidget, fileDetail, self.resultLink)
