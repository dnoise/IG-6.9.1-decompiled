.class public final Lcom/facebook/d/b/g;
.super Ljava/lang/Object;
.source "SoftErrorBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;

.field private d:Z

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/d/b/g;->e:I

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/d/b/g;
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/facebook/d/b/g;->a:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public final a(Ljava/lang/Throwable;)Lcom/facebook/d/b/g;
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/d/b/g;->c:Ljava/lang/Throwable;

    .line 85
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/d/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/d/b/g;
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/d/b/g;->b:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/d/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/d/b/g;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/facebook/d/b/g;->d:Z

    return v0
.end method

.method public final e()Lcom/facebook/d/b/g;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/d/b/g;->d:Z

    .line 107
    return-object p0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/facebook/d/b/g;->e:I

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/facebook/d/b/g;->f:Z

    return v0
.end method

.method public final h()Lcom/facebook/d/b/f;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/facebook/d/b/f;

    invoke-direct {v0, p0}, Lcom/facebook/d/b/f;-><init>(Lcom/facebook/d/b/g;)V

    return-object v0
.end method
