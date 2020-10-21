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
docker build -t postgres .
```

2. Run docker container:

```
docker run -it -d --name psicolab-db -p 5432:5432 postgres
```

3. Insert data to container:

```
cat ./query-2.sql | docker exec -i psicolab-db psql -U postgres -d psicolab
```

## BE

1. Install denon

2. start denon

```
denon start
```

In case you want to use a debug break (`--inspect-brk`) remember to change deno.json config to:

```
"cmd": "deno run --allow-net --allow-read --allow-write --unstable --allow-plugin --allow-env --inspect-brk -c tsconfig.json ./server.ts",
```