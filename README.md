# spacenet-data

Scripts for setting up the [SpaceNet](https://aws.amazon.com/public-data-sets/spacenet/) dataset for training a [SegNet](http://mi.eng.cam.ac.uk/projects/segnet/tutorial.html) model via https://github.com/developmentseed/skynet-train

## Use

Assuming you have `docker` installed and have downloaded the contents of `AOI_1_Rio/processedData` from the SpaceNet dataset to `/mnt/AOI_1_Rio/processedData`:

```sh
cd /mnt/AOI_1_Rio/processedData
tar zxvf 3band.tar.gz
cd vectorData
tar zxvf geojson.tar.gz
docker run -v /mnt/AOI_1_Rio:/spacenet -v /mnt/spacenet-1:/data developmentseed/spacenet-data
```


