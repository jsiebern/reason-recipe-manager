# reason-recipe-manager-server


[![CircleCI](https://circleci.com/gh/yourgithubhandle/reason-recipe-manager-server/tree/master.svg?style=svg)](https://circleci.com/gh/yourgithubhandle/reason-recipe-manager-server/tree/master)


**Contains the following libraries and executables:**

```
reason-recipe-manager-server@0.0.0
│
├─test/
│   name:    TestReasonRecipeManagerServer.exe
│   main:    TestReasonRecipeManagerServer
│   require: reason-recipe-manager-server.lib
│
├─library/
│   library name: reason-recipe-manager-server.lib
│   namespace:    ReasonRecipeManagerServer
│   require:
│
└─executable/
    name:    ReasonRecipeManagerServerApp.exe
    main:    ReasonRecipeManagerServerApp
    require: reason-recipe-manager-server.lib
```

## Developing:

```
npm install -g esy
git clone <this-repo>
esy install
esy build
```

## Running Binary:

After building the project, you can run the main binary that is produced.

```
esy x ReasonRecipeManagerServerApp.exe 
```

## Running Tests:

```
# Runs the "test" command in `package.json`.
esy test
```
