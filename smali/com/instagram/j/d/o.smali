.class public final Lcom/instagram/j/d/o;
.super Lcom/instagram/api/k/a/d;
.source "NewsfeedYouResponse.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/instagram/j/d/p;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/instagram/feed/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/instagram/api/k/a/d;-><init>()V

    .line 15
    invoke-static {}, Lcom/instagram/feed/f/a;->a()Lcom/instagram/feed/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/j/d/o;->t:Lcom/instagram/feed/f/a;

    .line 74
    return-void
.end method


# virtual methods
.method public final b()Lcom/instagram/j/d/p;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/j/d/o;->b:Lcom/instagram/j/d/p;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/instagram/j/d/p;

    invoke-direct {v0}, Lcom/instagram/j/d/p;-><init>()V

    iput-object v0, p0, Lcom/instagram/j/d/o;->b:Lcom/instagram/j/d/p;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/instagram/j/d/o;->b:Lcom/instagram/j/d/p;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/instagram/j/d/o;->b()Lcom/instagram/j/d/p;

    move-result-object v0

    iget v0, v0, Lcom/instagram/j/d/p;->e:I

    return v0
.end method

.method public final d()Lcom/instagram/feed/f/a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/instagram/j/d/o;->t:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method final e()Lcom/instagram/j/d/o;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/instagram/j/d/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/instagram/j/d/o;->t:Lcom/instagram/feed/f/a;

    sget-object v1, Lcom/instagram/feed/f/b;->c:Lcom/instagram/feed/f/b;

    iget-object v2, p0, Lcom/instagram/j/d/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/feed/f/a;->a(Lcom/instagram/feed/f/b;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/instagram/j/d/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public final t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/instagram/j/d/o;->d:Ljava/util/List;

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/j/d/o;->e:Ljava/util/List;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/j/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/j/d/o;->s:Ljava/util/List;

    return-object v0
.end method
