#coding:utf-8
import sys
import os
import os.path
import shutil
import zipfile
import hashlib

from datetime import datetime
from Helper import Helper

if __name__ == "__main__":

	src_dir = "E:\opensource2/project/superclineblog/ivy/ivy/ini"
	dest_dir = "E:/opensource2/project/superclineblog/blog"

	Helper.copytree(src_dir, dest_dir)

	os.system(dest_dir+"/build.bat")

	print("succeed to build supercline blog!")