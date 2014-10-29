.class public final Lcom/instagram/feed/survey/g;
.super Ljava/lang/Object;
.source "MultiQuestionSurvey_Question__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;

    invoke-direct {v0}, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 25
    const/4 v0, 0x0

    .line 35
    :cond_0
    return-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 31
    invoke-static {v0, v1, p0}, Lcom/instagram/feed/survey/g;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 32
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0
.end method

.method private static a(Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    const-string v2, "type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p2}, Lcom/instagram/feed/survey/d;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->c:Lcom/instagram/feed/survey/d;

    move v0, v1

    .line 66
    :goto_0
    return v0

    .line 43
    :cond_0
    const-string v2, "total_responders"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v0

    iput v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->d:I

    move v0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v2, "answers"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_3

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_3

    .line 51
    invoke-static {p2}, Lcom/instagram/feed/survey/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/MultiQuestionSurvey$PossibleAnswer;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_3
    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->e:Ljava/util/List;

    move v0, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const-string v2, "title"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_5

    :goto_2
    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->a:Ljava/lang/String;

    move v0, v1

    .line 61
    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 62
    :cond_6
    const-string v2, "qid"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 63
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;

    if-ne v2, v3, :cond_7

    :goto_3
    iput-object v0, p0, Lcom/instagram/feed/survey/MultiQuestionSurvey$Question;->b:Ljava/lang/String;

    move v0, v1

    .line 64
    goto :goto_0

    .line 63
    :cond_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 66
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method
