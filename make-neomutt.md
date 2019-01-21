Compiling NeoMutt for Ubuntu 18
-------------------------------

For whatever reason, NeoMutt is not available for Ubuntu 18. Here's how I built it.

Step 1: Clone the repo with git:

`git clone https://github.com/neomutt/neomutt`

Step 2: Install dependencies:

~~~
sudo apt-get -y install \
  mailutils urlview xsltproc xml-core \
  libxml2-utils docbook docbook-slides \
  libncursesw5-dev libidn11-dev \
  liblmdb-dev libgnutls28-dev
~~~


Step 3: In the neomutt git directory, configure and make:

~~~
./configure --lmdb --ssl --gnutls
make
~~~

Step 3: Test it.

`./neomutt`


Step 4: Install it.

`make install`


