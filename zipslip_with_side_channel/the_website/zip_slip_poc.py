"""
zip slip poc code
"""

import tarfile
tf = tarfile.TarFile('zip-slip.tar')
tf.list()
tf.extractall()
