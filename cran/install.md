### Contents

1. [Installing the GNU Readline library](#installing-the-gnu-readline-library)
2. [Installing R](#installing-r)

### Installing the GNU Readline library

1. Download the `readline-6.3` from ftp://ftp.cwru.edu/pub/bash/readline-6.3.tar.gz

2. Unpack the gzipped tar file under /tmp

```sh
cd /tmp
tar -zxvf readline-6.3.tar.gz
```

3a. Change to the directory this creates and run configure:

```sh
cd readline-6.0
./configure
```

3b. If you do not have write access to the `/usr/local/` hierarchy, then you can install the files somewhere else:

```sh	
./configure --prefix=/home/my-user-name/packages
```

4a. Now build the readline library

```sh
make
```

4b. and install (become superuser first if installing under /usr/local)

```sh
make install
```

5a. Now, ensure that the directory where the library has been installed (`/usr/local/lib/` by default) is in the search path. You can do this by setting the environment variable `LD_LIBRARY_PATH`

```csh
(csh)   setenv LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
```

```sh
(sh)    export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
```

5b. or add the script into `/etc/profile` or `~/.bashrc`.

### Installing R

1. Download the R source from http://mirrors.ustc.edu.cn/CRAN/src/base/R-3/R-3.1.0.tar.gz

2. Unpack the gzipped tar file

```sh
tar zxf R-3.1.0.tar.gz
```

3. Run configure

```sh
./configure --prefix=/opt/R-3.1.0 --with-readline=yes --with-x=no
```

4. Build the R library

```sh
make && make install
```

5. Create a link

```sh
ln -s /opt/R-3.1.0/bin/R /usr/local/bin/R
```
