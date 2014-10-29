.class public final Lcom/facebook/l/a/e;
.super Ljava/lang/Object;
.source "FbHostnameVerifierResult.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/facebook/l/a/e;->a:Z

    .line 14
    iput-boolean v0, p0, Lcom/facebook/l/a/e;->c:Z

    .line 15
    iput-boolean v0, p0, Lcom/facebook/l/a/e;->d:Z

    .line 16
    iput-boolean v0, p0, Lcom/facebook/l/a/e;->e:Z

    .line 17
    iput-boolean v0, p0, Lcom/facebook/l/a/e;->f:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/l/a/e;->g:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/l/a/e;->h:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/l/a/e;->i:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/facebook/l/a/e;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/l/a/e;->g:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/l/a/e;->j:Ljava/util/List;

    .line 114
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/facebook/l/a/e;->a:Z

    return v0
.end method

.method public final b()Lcom/facebook/l/a/e;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/l/a/e;->a:Z

    .line 40
    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/l/a/e;->h:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final c()Lcom/facebook/l/a/e;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/l/a/e;->a:Z

    .line 45
    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/l/a/e;->i:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/l/a/e;->c:Z

    .line 62
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/l/a/e;->d:Z

    .line 70
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/l/a/e;->e:Z

    .line 86
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/l/a/e;->f:Z

    .line 94
    return-void
.end method
