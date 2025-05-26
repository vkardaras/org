---
id: Karate for demo project
aliases: []
tags: []
---

After downloading the [[demo project for karate testing]] I can start testing with Karate

Create a maven project based on [[maven project archetype for Karate]]

```shell
mvn archetype:generate \
-DarchetypeGroupId=com.intuit.karate \
-DarchetypeArtifactId=karate-archetype \
-DarchetypeVersion=1.4.0 \
-DgroupId=com.vasiliskardaras \
-DartifactId=events-api-tests
```

Create the file `publicevents.feature` under the directory `java/eventsapi/events/`

Add the code to ![[Karate feature example]]
![[Get token with post request]]

## Create a token and use it in the same feature

![[Use the token in the same feature]]

### Create a feature token and include it in other features

![[Create authentication feature]]

![[Use token from feature]]

#### Include authentication feature once in feature

![[Call authentication feature once]]

### Add request parameters to request

![[Karate Request parameters]]

### Retry

[[Karate Retry]]

### Sleep

[[Karate Sleep]]

