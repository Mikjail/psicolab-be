# TO DO
- [ ] BE - Dockerize BE
- [ ] UI - Add Login
- [ ] UI - Add Result summary

# APIs

## Login / Signup
- [x] Auth Token
- [x] api/user/login Login users.
- [x] api/user/create Signup users.
- [x] api/user/delete Delete specific user.
## Test
- [x] api/test Get list of tests assigned by {userId}.

## Test Questions
- [x] api/questions Get list of questions.
- [x] api/sample Get list of sample questions.

## Test Results
- [x] api/results/save Set answer result.
- [x] api/results?testId=${testId} Get results from specific test 

## Test Points (Summary)

- [x] api/test/${testId}/points

# GETTING STARTED

## DB

1. Get docker image:

```
docker build -t postgres ./docker/.
```

2. Run docker container:

```
docker run -it -d --name psicolab-db -p 5432:5432 postgres
```

3. Insert data to container:

```
cat ./docker/query-2.sql | docker exec -i psicolab-db psql -U postgres -d psicolab
```

## BE

1. Install denon

2. start denon

```
denon start
```

### RUNNING DEBBUGER

1. In case you want to use a debug break (`--inspect-brk`) remember to change deno.json config to:

```
"cmd": "deno run --allow-net --allow-read --allow-write --unstable --allow-plugin --allow-env --inspect-brk -c tsconfig.json ./server.ts",

```

1. once (`--inspect-brk`) is added, run the following command

```
denon start
```
It should show the following message 
```Debugger listening on ws://127.0.0.1:9229/ws/[hash]```

2.  Launch Deno in VsCode. Once this is done you will see in the terminal the following mssge

```
Debugger session started.
The "ResultsController" controller has been registered.
The "/api/results/save" route has been registered.
The "/api/results" route has been registered.
The "QuestionsController" controller has been registered.
The "/api/questions" route has been registered.
The "/api/questions/sample" route has been registered.
The "UserController" controller has been registered.
The "/api/user/create" route has been registered.
The "/api/user/delete" route has been registered.
The "/api/user/" route has been registered.
The "/api/user/:id" route has been registered.
The "/api/user/:id" route has been registered.
The "/api/user/login" route has been registered.
The "TestsController" controller has been registered.
The "/api/test" route has been registered.
The "/api/test/:testId/points" route has been registered.
Server start in :8000
```


