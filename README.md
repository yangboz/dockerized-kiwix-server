dockerized-kiwix-server
=================

> Wanna run your own wikipedia server locally? Look no further!

* Download a content file from <http://www.kiwix.org/wiki/Content> or <http://wiki.kiwix.org/wiki/Main_Page>.
* Given `wikipedia.zim` resides in `/KiwixData`, execute the following:

```
docker run -v /KiwixData:/kiwix-data -p 8080:8080 smartkit/kiwix-server wikispecies_en_all_novid_2018-06.zim
```
### Kiwix Library overview

![kiwix.png](https://github.com/yangboz/dockerized-kiwix-server/raw/master/snaps/KiwixLibrary.jpg)

## Kiwix Wikipedia ### 

![wikipedia1.png](https://github.com/yangboz/dockerized-kiwix-server/raw/master/snaps/wikipedia1.png)
![wikipedia2.png](https://github.com/yangboz/dockerized-kiwix-server/raw/master/snaps/wikipedia2.png)


## Kiwix WikiVoyage ### 

## Kiwix Wikinews ### 

## Kiwix TED ### 

## WikiLeaks ###

```
docker run -v /Users/yangboz/Documents/KiwixData:/kiwix-data -p 8080:8080 smartkit/kiwix-server wikileaks_en_afghanistan-war-diary.zim 
```


And How?
=================

## Step 1: Download some ZIM files

[FTP site with ZIM files](https://ftp.fau.de/kiwix/zim/).

Here are some smaller ones for testing:

1. [Assamese Medical Wikipedia (28.3 MB)](https://ftp.fau.de/kiwix/zim/wikipedia/wikipedia_as_medicine_2018-07.zim)
1. [English Wikipedia Bollywood Articles (265 MB)](https://ftp.fau.de/kiwix/zim/wikipedia/wikipedia_en_bollywood_2017-01.zim)
1. [Simple English Wikipedia w/ No Pictures (159 MB)](https://ftp.fau.de/kiwix/zim/wikipedia/wikipedia_en_simple_all_nopic_2016-08.zim)

## Step 2: Move the ZIM files to the 'zim' directory

```
# inside the folder where you downloaded the ZIMs (e.g. ~/Downloads)
$ mkdir -p ./dockerized-kiwix-server/zims
$ cp *.zim ./dockerized-kiwix-server/zims
```

## Step 3: Build the Docker container

This will create the Linux machine, download the Kiwix tools (including `kiwix-serve`), copy the ZIMfiles over, then create the Kiwix library XML file.

```
$ pwd # -> ./dockerized-kiwix-server
$ docker build -t kiwix-serve .
```

## Step 4: Run the container

This starts the container and the Kiwix server, and makes it available on your machine at `http://localhost:8080`.
```
$ docker run -p 8080:8080 -v $PWD/zims:/kiwix-data smartkit/kiwix-server:wikinews_en_all_novid_2018-07 wikinews_en_all_novid_2018-07.zim
```

A real example: http://118.190.3.169:8888

```
docker run -p 8888:8080 -v $PWD/KiwixData:/kiwix-data smartkit/kiwix-server:latest archlinux_en_all_2018-06.zim tedxgeneva-2014_fr_all_2015-03.zim wikiquote_en_all_novid_2018-06.zim languagelearning.stackexchange.com_en_all_2018-03.zim wikileaks_en_afghanistan-war-diary.zim wikispecies_en_all_novid_2018-06.zim phet_en_2018-08.zim wikinews_en_all.zim wikiversity_en_all_novid_2018-06.zim phet_mul_2017-11.zim wikinews_en_all_novid_2018-07.zim wikivoyage_en_all_2018-07.zim psiram_en_all_nopic_2018-07.zim wikipedia_as_medicine_2018-07.zim ted_en_technology_2016-06.zim wikipedia_zh_medicine_nopic_2017-10.zim
```


To turn it off:

```
$ docker ps # -> find the container id
$ docker stop <container id>
```

## Step 5: Try it out in the browser

Go to http://localhost:8080.

## References

http://wiki.kiwix.org/wiki/Kiwix-plug

https://github.com/jasiek/dockerized-kiwix-server

https://github.com/jonboiser/dockerized-kiwix-server

http://www.openzim.org/wiki/Build_your_ZIM_file
