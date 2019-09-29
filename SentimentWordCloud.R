option(warn = -1)
suppressMessages(library(RSentiment))
suppressMessages(library(tm))
suppressMessages(library(SnowballC))
suppressMessages(library(wordcloud))
suppressMessages(library(RColorBrewer))
options(java.parameters = "- Xmx1024m")
gc()


## load the model with proper path
Preprocess <- read.csv("C:\\Users\\Anuj\\Desktop\\TMBS\\Problem-4\\Tech_Mahindra_Befrore_Preprocess.csv")

View(Preprocess)

pros <- calculate_sentiment(Preprocess$pros)
options(java.parameters = "- Xmx1024m")
gc()

sum <- calculate_sentiment(Preprocess$summary)
options(java.parameters = "- Xmx1024m")
gc()

cons <- calculate_sentiment(Preprocess$cons)
options(java.parameters = "- Xmx1024m")


d <- data.frame(word = Preprocess$pros)
set.seed(1234)
pros <- wordcloud(words = Preprocess$pros , min.freq = 15,
          max.words=300, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

cons <- wordcloud(words = Preprocess$cons , min.freq = 15,
                  max.words=300, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))


summary <- wordcloud(words = Preprocess$summary , min.freq = 30,
                  max.words=300, random.order=FALSE, rot.per=0.35, 
                  colors=brewer.pal(8, "Dark2"))



