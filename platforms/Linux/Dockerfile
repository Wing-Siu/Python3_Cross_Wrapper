#amd64
FROM debian:foo@sha256:7317c3e3f5a1139d5a00407735bba8fbce2cf8f3c5b9c03f71ae21434e34e8cf as amd64
VOLUME [/source_code]
VOLUME [/output_bin]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip git sudo zip -y
RUN pip3 install pyinstaller
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#arm64
FROM debian:foo@sha256:f9007c3dbd43b4ba83eac90f029f37a43a3ea9b48b737e95963fae81bc892313 as arm64

VOLUME [/source_code]
VOLUME [/output_bin]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace/ && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#armel
FROM debian:foo@sha256:58c8b7ddc30326ada69051bce8dbce161d50ee697da4d20b8850c8ab90b8dcc0 as armel
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============ 
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#armhf
FROM debian:foo@sha256:c158f9db412f045247390db719761bedaa0b7811e75dfdc278cbc306b224d18f as armhf
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============ 
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#i386
FROM debian:foo@sha256:6212661c9e10f8fc7be797e5d9550948bb654455798fc7eb5df4c3d6bac42315 as i386
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip git sudo zip -y
RUN pip3 install pyinstaller
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#mips64le
FROM debian:foo@sha256:680739686e5dd521e1a7f6717e4bc220917ac53e20fc56b3378e614b01d66634 as mips64le
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============ 
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#ppc64le
FROM debian:foo@sha256:2dfc33e72de78a77c363e029558e46855c34c4d6f5d04f400679c999db259a5b as ppc64le
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============ 
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#s390x
FROM debian:foo@sha256:f4f8457fd057d0744bbd01d994e9ad1229f0bee5d063f1ab7a8568ef18c8ddf8 as s390x
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============ 
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./encapsulation.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin
