# -*- coding: utf-8 -*-
import BaseTest
from BaseTest import *

class Test(BaseTest):

    def __init__(self):
        BaseTest.__init__(self)
        self.name = os.path.basename(__file__)[:-5]
        self.program="gaudirun.py"
        self.args=["$GAUDIEXAMPLESROOT/options/AlgTools.py"]
        self.reference = "refs/AlgTools_pyopts.ref"
