.class public final Lcom/instagram/feed/a/g;
.super Ljava/lang/Object;
.source "MainFeedResponse__JsonHelper.java"


# direct methods
.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/c;
    .locals 3
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/instagram/feed/a/c;

    invoke-direct {v0}, Lcom/instagram/feed/a/c;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    .line 29
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 32
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 35
    invoke-static {v0, v1, p0}, Lcom/instagram/feed/a/g;->a(Lcom/instagram/feed/a/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    .line 36
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/feed/a/c;->b()Lcom/instagram/feed/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/instagram/feed/a/c;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 44
    const-string v1, "multiple_question_survey"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p2}, Lcom/instagram/feed/survey/h;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/MultiQuestionSurvey;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/a/c;->b:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    .line 57
    :goto_0
    return v0

    .line 47
    :cond_0
    const-string v1, "megaphone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {p2}, Lcom/instagram/feed/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/a/e;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "user_is_needy"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/feed/a/c;->c:Z

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "survey"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2}, Lcom/instagram/feed/survey/am;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/j;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/a/c;->a:Lcom/instagram/feed/survey/j;

    goto :goto_0

    .line 57
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/instagram/feed/a/j;->a(Lcom/instagram/feed/a/i;Ljava/lang/String;Lcom/fasterxml/jackson/a/l;)Z

    move-result v0

    goto :goto_0
.end method
