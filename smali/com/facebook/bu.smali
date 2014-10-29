.class public Lcom/facebook/bu;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lcom/facebook/cb;

.field private b:Lcom/facebook/cg;

.field private c:I

.field private d:Lcom/facebook/cc;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/cf;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    sget-object v0, Lcom/facebook/cg;->a:Lcom/facebook/cg;

    iput-object v0, p0, Lcom/facebook/bu;->b:Lcom/facebook/cg;

    .line 1523
    const v0, 0xface

    iput v0, p0, Lcom/facebook/bu;->c:I

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bu;->e:Z

    .line 1526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bu;->f:Ljava/util/List;

    .line 1527
    sget-object v0, Lcom/facebook/cf;->c:Lcom/facebook/cf;

    iput-object v0, p0, Lcom/facebook/bu;->g:Lcom/facebook/cf;

    .line 1532
    new-instance v0, Lcom/facebook/bv;

    invoke-direct {v0, p0, p1}, Lcom/facebook/bv;-><init>(Lcom/facebook/bu;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/bu;->a:Lcom/facebook/cb;

    .line 1543
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    sget-object v0, Lcom/facebook/cg;->a:Lcom/facebook/cg;

    iput-object v0, p0, Lcom/facebook/bu;->b:Lcom/facebook/cg;

    .line 1523
    const v0, 0xface

    iput v0, p0, Lcom/facebook/bu;->c:I

    .line 1525
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bu;->e:Z

    .line 1526
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/bu;->f:Ljava/util/List;

    .line 1527
    sget-object v0, Lcom/facebook/cf;->c:Lcom/facebook/cf;

    iput-object v0, p0, Lcom/facebook/bu;->g:Lcom/facebook/cf;

    .line 1546
    new-instance v0, Lcom/facebook/bw;

    invoke-direct {v0, p0, p1}, Lcom/facebook/bw;-><init>(Lcom/facebook/bu;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/bu;->a:Lcom/facebook/cb;

    .line 1557
    return-void
.end method

.method static synthetic a(Lcom/facebook/bu;)Z
    .locals 1
    .parameter

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/facebook/bu;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/bu;)Lcom/facebook/cb;
    .locals 1
    .parameter

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/facebook/bu;->a:Lcom/facebook/cb;

    return-object v0
.end method


# virtual methods
.method a(Lcom/facebook/cf;)Lcom/facebook/bu;
    .locals 0
    .parameter

    .prologue
    .line 1643
    if-eqz p1, :cond_0

    .line 1644
    iput-object p1, p0, Lcom/facebook/bu;->g:Lcom/facebook/cf;

    .line 1646
    :cond_0
    return-object p0
.end method

.method a(Lcom/facebook/cg;)Lcom/facebook/bu;
    .locals 0
    .parameter

    .prologue
    .line 1610
    if-eqz p1, :cond_0

    .line 1611
    iput-object p1, p0, Lcom/facebook/bu;->b:Lcom/facebook/cg;

    .line 1613
    :cond_0
    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/facebook/bu;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/bu;"
        }
    .end annotation

    .prologue
    .line 1632
    if-eqz p1, :cond_0

    .line 1633
    iput-object p1, p0, Lcom/facebook/bu;->f:Ljava/util/List;

    .line 1635
    :cond_0
    return-object p0
.end method

.method final a()Lcom/facebook/cc;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/facebook/bu;->d:Lcom/facebook/cc;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/facebook/bu;->h:Ljava/lang/String;

    .line 1663
    return-void
.end method

.method final b()Lcom/facebook/cg;
    .locals 1

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/facebook/bu;->b:Lcom/facebook/cg;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 1628
    iget v0, p0, Lcom/facebook/bu;->c:I

    return v0
.end method

.method final d()Ljava/util/List;
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
    .line 1639
    iget-object v0, p0, Lcom/facebook/bu;->f:Ljava/util/List;

    return-object v0
.end method

.method final e()Lcom/facebook/cb;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/facebook/bu;->a:Lcom/facebook/cb;

    return-object v0
.end method

.method final f()Lcom/facebook/k;
    .locals 9

    .prologue
    .line 1674
    new-instance v8, Lcom/facebook/bx;

    invoke-direct {v8, p0}, Lcom/facebook/bx;-><init>(Lcom/facebook/bu;)V

    .line 1685
    new-instance v0, Lcom/facebook/k;

    iget-object v1, p0, Lcom/facebook/bu;->b:Lcom/facebook/cg;

    iget v2, p0, Lcom/facebook/bu;->c:I

    iget-boolean v3, p0, Lcom/facebook/bu;->e:Z

    iget-object v4, p0, Lcom/facebook/bu;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/bu;->g:Lcom/facebook/cf;

    iget-object v6, p0, Lcom/facebook/bu;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/bu;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/facebook/k;-><init>(Lcom/facebook/cg;IZLjava/util/List;Lcom/facebook/cf;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/u;)V

    return-object v0
.end method
