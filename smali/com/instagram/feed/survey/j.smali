.class public final Lcom/instagram/feed/survey/j;
.super Ljava/lang/Object;
.source "Survey.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/k;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget v0, Lcom/instagram/feed/survey/aj;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/j;->h:I

    .line 149
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/feed/survey/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/feed/survey/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/feed/survey/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/instagram/feed/survey/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/instagram/feed/survey/j;->f:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/instagram/feed/survey/j;->h:I

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/survey/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/instagram/feed/survey/j;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final h()Lcom/instagram/feed/survey/j;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/feed/survey/j;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget v0, Lcom/instagram/feed/survey/aj;->a:I

    iput v0, p0, Lcom/instagram/feed/survey/j;->h:I

    .line 146
    :goto_0
    return-object p0

    .line 144
    :cond_0
    sget v0, Lcom/instagram/feed/survey/aj;->b:I

    iput v0, p0, Lcom/instagram/feed/survey/j;->h:I

    goto :goto_0
.end method
