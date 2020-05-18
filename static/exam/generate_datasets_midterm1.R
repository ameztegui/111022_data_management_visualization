load("./data/calfire.rdata")

set.seed(42)
calfire1 <- sample_n(calfire, 10121)
calfire2 <- sample_n(calfire, 10254)
calfire3 <- sample_n(calfire, 9562)
calfire4 <- sample_n(calfire, 11251)

save(calfire1, file = "./data/calfire1.rdata")
save(calfire2, file ="./data/calfire2.rdata")
save(calfire3, file = "./data/calfire3.rdata")
save(calfire4, file ="./data/calfire4.rdata")