.class final Lcom/facebook/k;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final transient a:Lcom/facebook/u;

.field private b:Lcom/facebook/cg;

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/cf;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/cg;IZLjava/util/List;Lcom/facebook/cf;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/u;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cg;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/cf;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/k;->d:Z

    .line 747
    iput-object p1, p0, Lcom/facebook/k;->b:Lcom/facebook/cg;

    .line 748
    iput p2, p0, Lcom/facebook/k;->c:I

    .line 749
    iput-boolean p3, p0, Lcom/facebook/k;->d:Z

    .line 750
    iput-object p4, p0, Lcom/facebook/k;->e:Ljava/util/List;

    .line 751
    iput-object p5, p0, Lcom/facebook/k;->f:Lcom/facebook/cf;

    .line 752
    iput-object p6, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    .line 753
    iput-object p7, p0, Lcom/facebook/k;->h:Ljava/lang/String;

    .line 754
    iput-object p8, p0, Lcom/facebook/k;->a:Lcom/facebook/u;

    .line 756
    return-void
.end method


# virtual methods
.method final a()Lcom/facebook/u;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/facebook/k;->a:Lcom/facebook/u;

    return-object v0
.end method

.method final a(Ljava/util/List;)V
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
    .line 767
    iput-object p1, p0, Lcom/facebook/k;->e:Ljava/util/List;

    .line 768
    return-void
.end method

.method final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/facebook/k;->e:Ljava/util/List;

    return-object v0
.end method

.method final c()Lcom/facebook/cg;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/facebook/k;->b:Lcom/facebook/cg;

    return-object v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lcom/facebook/k;->c:I

    return v0
.end method

.method final e()Lcom/facebook/cf;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/facebook/k;->f:Lcom/facebook/cf;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/facebook/k;->d:Z

    return v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/facebook/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method final i()Z
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/facebook/k;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/k;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
