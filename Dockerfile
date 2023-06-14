FROM python:3.8

WORKDIR /usr/src/safe-planner

RUN pip install --no-cache-dir ply

COPY . .

CMD [ "./sp", "benchmarks/fond-domains/elevators/p01.pddl" ]

