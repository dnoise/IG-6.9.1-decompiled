.class public final Lcom/instagram/feed/a/c;
.super Lcom/instagram/feed/a/i;
.source "MainFeedResponse.java"


# instance fields
.field a:Lcom/instagram/feed/survey/j;

.field b:Lcom/instagram/feed/survey/MultiQuestionSurvey;

.field c:Z

.field d:Lcom/instagram/feed/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/instagram/feed/a/i;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method protected final b()Lcom/instagram/feed/a/c;
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/instagram/feed/a/i;->c()Lcom/instagram/feed/a/i;

    .line 79
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    iget-object v0, v0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    iget-object v0, v0, Lcom/instagram/feed/a/e;->a:Lcom/instagram/feed/f/c;

    sget-object v1, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Lcom/instagram/feed/f/d;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    iget-object v0, v0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    iget-object v0, v0, Lcom/instagram/feed/a/e;->b:Lcom/instagram/feed/f/c;

    sget-object v1, Lcom/instagram/feed/f/d;->c:Lcom/instagram/feed/f/d;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Lcom/instagram/feed/f/d;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    iget-object v0, v0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    iget-object v0, v0, Lcom/instagram/feed/a/e;->c:Lcom/instagram/feed/f/c;

    sget-object v1, Lcom/instagram/feed/f/d;->a:Lcom/instagram/feed/f/d;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/f/c;->a(Lcom/instagram/feed/f/d;)V

    .line 91
    :cond_2
    return-object p0
.end method

.method protected final synthetic c()Lcom/instagram/feed/a/i;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/instagram/feed/a/c;->b()Lcom/instagram/feed/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/instagram/feed/a/e;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/instagram/feed/a/c;->d:Lcom/instagram/feed/a/e;

    return-object v0
.end method

.method public final e()Lcom/instagram/feed/survey/j;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/feed/a/c;->a:Lcom/instagram/feed/survey/j;

    return-object v0
.end method

.method public final f()Lcom/instagram/feed/survey/MultiQuestionSurvey;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/feed/a/c;->b:Lcom/instagram/feed/survey/MultiQuestionSurvey;

    return-object v0
.end method
