## RUNNER File Atlas
For info on usage rights, please read the [license](LICENSE)!

## Documentation
[Introduction to RUNNER](#introduction-to-runner)

[How to manually write a RUNNER file](#how-to-manually-write-a-runner-file)

## Introduction to RUNNER
RUNNER is a slightly more complex, self-written and RAM reducing version of a Generic Xml file. Codingwise, It's practically the same thing, it doesn't do anything different as it looks, but it does have some slightly different things compared to GENERICXML and SPARROW. Usually, to get haxe running a new atlas like this, it would need a custom version of flixel, and flxanimate, but RUNNER uses GENERICXMLs coding as a base for the game to even read it without a custom version.

### Here's how a generic xml file is usually written:

```
<?xml version="1.0" encoding="UTF-8"?>

<TextureAtlas imagePath="image.png">

  <SubTexture name="image index0000" x="0" y="0" width="0" height="0"/>
```

### Now here's how a RUNNER file should be written:

```
<?runner version="1.0" encoding="UTF-8"?>

<TextureAtlas imagePath="image.png" width="0" height="0" scale="1" format="RGBA8888" atlasType="runnerfile">

<?index indexName="Index" indexType="xml"?>

  <sprite n="Index0000" x="0" y="0" w="0" h="0" pX="0.5" pY="0.5" oX="0" oY="0" oW="0" oH="0"/>

  <??>
 ```

RUNNER is pretty much read like a texture packer xml except because of it's modified writing, it's actually easier and more effective to load properly. An important factor is that `<??>` would be just ignored in a genericxml file but in here they are used as separators

## How to manually write a RUNNER file
### title of the file

Every xml file starts like this

``<?xml version="1.0" encoding="utf-8"?>
<TextureAtlas imagePath="Image.png">``

replace the xml with runner, and add your image's resulution to the TextureAtlas, set the format to RGBA8888 and the atlasType to runnerfile
like this:

``<?runner version="1.0" encoding="UTF-8"?>
<TextureAtlas imagePath="Image.png" width="0" height="0" scale="0" format="RGBA8888" atlasType="runnerfile">``

### Index names

Each index must be written above each sprite n id with a different name and must end with a <??> whenever ending an index list.

e.g:
``<?index indexName="Index1" indexType="xml"?>
  <sprite n="Index10000" x="0" y="0" w="1" h="1"/>
  <sprite n="Index10001" x="1" y="1" w="1" h="1"/>
<??>
<?index indexName="Index2" indexType="xml"?>  <-- the names of the indexName sprite n= should match
  <sprite n="Index20000" x="0" y="0" w="0" h="0"/>
<??>``

Now all you need to do is to save the xml as a .runner file and you're done!
