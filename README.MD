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
- [x] api/results Get result from specific test 


GETTING STARTED

# DB

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

# BE

1. Install denon

2. denon startx