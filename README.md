dockerized-kiwix-server
=================

> Wanna run your own wikipedia server locally? Look no further!

* Download a content file from <http://www.kiwix.org/wiki/Content> or <http://wiki.kiwix.org/wiki/Main_Page>.
* Given `wikipedia.zim` resides in `/KiwixData`, execute the following:

```
docker run -v /KiwixData:/kiwix-data -p 8080:8080 smartkit/kiwix-server wikispecies_en_all_novid_2018-06.zim
```

![wikipedia1.png](https://github.com/jasiek/dockerized-kiwix-server/raw/master/snaps/wikipedia1.png)
![wikipedia2.png](https://github.com/jasiek/dockerized-kiwix-server/raw/master/snaps/wikipedia2.png)

## Kiwix Wikipedia ### 

## Kiwix WikiVoyage ### 

## Kiwix Wikinews ### 

## Kiwix TED ### 


