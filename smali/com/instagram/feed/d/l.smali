.class public final Lcom/instagram/feed/d/l;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Lcom/instagram/feed/d/ai;


# static fields
.field private static C:I


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field private D:Ljava/lang/CharSequence;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Landroid/net/Uri;

.field private L:Ljava/lang/String;

.field private M:Lcom/instagram/feed/d/e;

.field private N:Lcom/instagram/feed/d/e;

.field private O:Lcom/instagram/feed/d/e;

.field private P:Lcom/instagram/feed/d/e;

.field private final Q:Lcom/instagram/feed/d/e;

.field private R:Z

.field private S:I

.field private T:Lcom/instagram/model/b/a;

.field private U:J

.field a:Ljava/lang/String;

.field b:Lcom/instagram/user/c/a;

.field c:Lcom/instagram/model/a/a;

.field d:J

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/s;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/s;",
            ">;"
        }
    .end annotation
.end field

.field g:I

.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field j:Ljava/lang/Integer;

.field k:Lcom/instagram/feed/d/b;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/b;",
            ">;"
        }
    .end annotation
.end field

.field m:Z

.field n:J

.field o:Lcom/instagram/venue/model/Venue;

.field p:Ljava/lang/Double;

.field q:Ljava/lang/Double;

.field r:Lcom/instagram/feed/d/p;

.field s:Z

.field t:Lcom/instagram/feed/d/r;

.field u:Z

.field v:Ljava/lang/String;

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/b/a;",
            ">;"
        }
    .end annotation
.end field

.field x:J

.field y:J

.field z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/instagram/feed/d/e;

    invoke-direct {v0}, Lcom/instagram/feed/d/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/l;->P:Lcom/instagram/feed/d/e;

    .line 198
    new-instance v0, Lcom/instagram/feed/d/e;

    invoke-direct {v0}, Lcom/instagram/feed/d/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/l;->Q:Lcom/instagram/feed/d/e;

    .line 208
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/feed/d/l;->n:J

    .line 213
    const/4 v0, 0x2

    iput v0, p0, Lcom/instagram/feed/d/l;->S:I

    .line 379
    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;
    .locals 1
    .parameter

    .prologue
    .line 456
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;Z)Lcom/instagram/feed/d/l;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-static {p0}, Lcom/instagram/feed/d/ah;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 462
    if-eqz p1, :cond_0

    .line 464
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/ad;->b(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 469
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media.ADDED_COMMENTS|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 654
    if-nez p0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    goto :goto_0
.end method

.method private static a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 680
    if-nez p0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/instagram/feed/d/e;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private ar()V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 495
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/b/a;

    .line 497
    invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iput-object v0, p0, Lcom/instagram/feed/d/l;->T:Lcom/instagram/model/b/a;

    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/d/l;->T:Lcom/instagram/model/b/a;

    if-nez v0, :cond_2

    .line 505
    const-string v0, "sender not in recipient list"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 511
    :cond_3
    return-void
.end method

.method private as()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;

    return-object v0
.end method

.method private at()V
    .locals 3

    .prologue
    .line 933
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/feed/d/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 936
    return-void
.end method

.method private au()V
    .locals 3

    .prologue
    .line 939
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/feed/d/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 940
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 942
    return-void
.end method

.method private av()Lcom/instagram/feed/d/e;
    .locals 5

    .prologue
    .line 965
    new-instance v1, Lcom/instagram/feed/d/e;

    invoke-direct {v1}, Lcom/instagram/feed/d/e;-><init>()V

    .line 966
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    if-ne v0, v2, :cond_0

    .line 967
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 970
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v3

    sget-object v4, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    if-ne v3, v4, :cond_1

    .line 971
    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    goto :goto_0

    .line 974
    :cond_2
    return-object v1
.end method

.method private aw()Lcom/instagram/feed/d/e;
    .locals 4

    .prologue
    .line 1005
    new-instance v1, Lcom/instagram/feed/d/e;

    invoke-direct {v1}, Lcom/instagram/feed/d/e;-><init>()V

    .line 1006
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/feed/d/c;->f:Lcom/instagram/feed/d/c;

    if-ne v0, v2, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 1010
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/feed/d/c;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    goto :goto_0

    .line 1014
    :cond_2
    return-object v1
.end method

.method static b(Lcom/fasterxml/jackson/a/l;)J
    .locals 4
    .parameter

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;

    if-ne v0, v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 483
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media.REMOVED_COMMENTS|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 602
    iget-object v0, p1, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/l;->c(Lcom/instagram/feed/d/l;)V

    .line 607
    :cond_0
    iget-object v0, p1, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    .line 608
    return-void
.end method

.method private c(Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter

    .prologue
    .line 611
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 614
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->al()Lcom/instagram/model/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/instagram/feed/d/l;->g(Ljava/lang/String;)Lcom/instagram/model/b/a;

    move-result-object v1

    .line 617
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/feed/d/l;->g(Ljava/lang/String;)Lcom/instagram/model/b/a;

    move-result-object v2

    .line 620
    invoke-virtual {v1}, Lcom/instagram/model/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/instagram/model/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 623
    :goto_0
    invoke-virtual {v2}, Lcom/instagram/model/b/a;->b()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 624
    sget v1, Lcom/instagram/model/b/c;->a:I

    invoke-virtual {v2, v1, v0}, Lcom/instagram/model/b/a;->a(IZ)V

    .line 625
    iget-object v0, p1, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 628
    :cond_1
    return-void

    .line 620
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 693
    const-string v1, "comments"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    const-string v1, "comment_count"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    const-string v1, "has_more_comments"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    const-string v1, "caption"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    const-string v1, "next_max_id"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A()Lcom/instagram/feed/d/e;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/instagram/feed/d/l;->O:Lcom/instagram/feed/d/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    if-eqz v0, :cond_0

    .line 959
    invoke-direct {p0}, Lcom/instagram/feed/d/l;->av()Lcom/instagram/feed/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->O:Lcom/instagram/feed/d/e;

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->O:Lcom/instagram/feed/d/e;

    return-object v0
.end method

.method public final B()Lcom/instagram/venue/model/Venue;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/instagram/feed/d/l;->o:Lcom/instagram/venue/model/Venue;

    return-object v0
.end method

.method public final C()I
    .locals 1

    .prologue
    .line 990
    iget v0, p0, Lcom/instagram/feed/d/l;->E:I

    return v0
.end method

.method public final D()Lcom/instagram/feed/d/e;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/instagram/feed/d/l;->N:Lcom/instagram/feed/d/e;

    if-nez v0, :cond_0

    .line 999
    invoke-direct {p0}, Lcom/instagram/feed/d/l;->aw()Lcom/instagram/feed/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->N:Lcom/instagram/feed/d/e;

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->N:Lcom/instagram/feed/d/e;

    return-object v0
.end method

.method public final E()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    .line 1031
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 1032
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1033
    return-void
.end method

.method public final F()V
    .locals 1

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 1037
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1038
    return-void
.end method

.method public final G()V
    .locals 1

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 1042
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1043
    return-void
.end method

.method public final H()V
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 1047
    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    .line 1048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1049
    return-void
.end method

.method public final I()V
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 1053
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1054
    return-void
.end method

.method public final J()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->R:Z

    .line 1058
    return-void
.end method

.method public final K()V
    .locals 2

    .prologue
    .line 1061
    iget v0, p0, Lcom/instagram/feed/d/l;->S:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/feed/d/l;->S:I

    .line 1062
    iget-object v0, p0, Lcom/instagram/feed/d/l;->P:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    iget-object v1, p0, Lcom/instagram/feed/d/l;->P:Lcom/instagram/feed/d/e;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/e;)Z

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->P:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->b()V

    .line 1067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->R:Z

    .line 1068
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1069
    return-void
.end method

.method public final L()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->R:Z

    .line 1073
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1074
    return-void
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 1077
    iget-boolean v0, p0, Lcom/instagram/feed/d/l;->R:Z

    return v0
.end method

.method public final N()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/instagram/feed/d/l;->o:Lcom/instagram/venue/model/Venue;

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    sget v0, Lcom/instagram/feed/d/n;->c:I

    .line 1084
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/instagram/feed/d/n;->b:I

    goto :goto_0
.end method

.method public final O()Z
    .locals 2

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final P()Z
    .locals 1

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->Q()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->R()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Q()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 1097
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->B()Lcom/instagram/venue/model/Venue;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1099
    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->g()Ljava/lang/Double;

    move-result-object v0

    .line 1101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->p:Ljava/lang/Double;

    goto :goto_0
.end method

.method public final R()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->B()Lcom/instagram/venue/model/Venue;

    move-result-object v0

    .line 1106
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1107
    invoke-virtual {v0}, Lcom/instagram/venue/model/Venue;->h()Ljava/lang/Double;

    move-result-object v0

    .line 1109
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/Double;

    goto :goto_0
.end method

.method public final S()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/instagram/feed/d/l;->K:Landroid/net/Uri;

    return-object v0
.end method

.method public final T()Z
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/instagram/feed/d/l;->K:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/feed/d/l;->K:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final U()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1125
    iput-object v0, p0, Lcom/instagram/feed/d/l;->o:Lcom/instagram/venue/model/Venue;

    .line 1126
    iput-object v0, p0, Lcom/instagram/feed/d/l;->p:Ljava/lang/Double;

    .line 1127
    iput-object v0, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/Double;

    .line 1128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1129
    return-void
.end method

.method public final V()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    iget-object v0, v0, Lcom/instagram/feed/d/p;->a:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final W()Z
    .locals 1

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->V()Ljava/util/ArrayList;

    move-result-object v0

    .line 1137
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final X()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    iget-object v0, v0, Lcom/instagram/feed/d/p;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    iget-object v0, v0, Lcom/instagram/feed/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final Y()Z
    .locals 1

    .prologue
    .line 1166
    iget-boolean v0, p0, Lcom/instagram/feed/d/l;->s:Z

    return v0
.end method

.method public final Z()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Lcom/instagram/feed/d/l;->u:Z

    return v0
.end method

.method final a()Lcom/instagram/feed/d/l;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    iget-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/instagram/feed/d/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/s;

    .line 385
    iget v2, v0, Lcom/instagram/feed/d/s;->b:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 386
    iget-object v0, v0, Lcom/instagram/feed/d/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_1
    iget v2, v0, Lcom/instagram/feed/d/s;->b:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 388
    iget-object v0, v0, Lcom/instagram/feed/d/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->G:Ljava/lang/String;

    goto :goto_0

    .line 389
    :cond_2
    iget v2, v0, Lcom/instagram/feed/d/s;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 390
    iget-object v0, v0, Lcom/instagram/feed/d/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->F:Ljava/lang/String;

    goto :goto_0

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/instagram/feed/d/l;->f:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 396
    iget-object v0, p0, Lcom/instagram/feed/d/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/s;

    .line 397
    iget v2, v0, Lcom/instagram/feed/d/s;->b:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_5

    .line 398
    iget-object v0, v0, Lcom/instagram/feed/d/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->J:Ljava/lang/String;

    goto :goto_1

    .line 399
    :cond_5
    iget v2, v0, Lcom/instagram/feed/d/s;->b:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    .line 400
    iget-object v0, v0, Lcom/instagram/feed/d/s;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->I:Ljava/lang/String;

    goto :goto_1

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    if-nez v0, :cond_7

    .line 407
    sget-object v0, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    .line 411
    :cond_7
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 415
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    if-eqz v1, :cond_8

    .line 419
    iget-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 420
    iput-object v4, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    .line 421
    const/4 v0, 0x1

    .line 428
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/instagram/feed/d/l;->l:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 429
    iget-object v1, p0, Lcom/instagram/feed/d/l;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 430
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 432
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 434
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 423
    :cond_9
    iget-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v1, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_2

    .line 436
    :cond_a
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_3

    .line 439
    :cond_b
    new-instance v0, Lcom/instagram/feed/d/e;

    iget-object v2, p0, Lcom/instagram/feed/d/l;->l:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/instagram/feed/d/e;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    .line 440
    iput-object v4, p0, Lcom/instagram/feed/d/l;->l:Ljava/util/List;

    .line 444
    :goto_4
    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_c

    if-lez v1, :cond_c

    .line 445
    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    .line 448
    :cond_c
    invoke-direct {p0}, Lcom/instagram/feed/d/l;->ar()V

    .line 450
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->x:J

    iput-wide v0, p0, Lcom/instagram/feed/d/l;->U:J

    .line 452
    return-object p0

    :cond_d
    move v1, v0

    goto :goto_4
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 906
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    .line 907
    iget-object v0, p0, Lcom/instagram/feed/d/l;->J:Ljava/lang/String;

    .line 909
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->I:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 994
    iput p1, p0, Lcom/instagram/feed/d/l;->E:I

    .line 995
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 688
    iput-wide p1, p0, Lcom/instagram/feed/d/l;->y:J

    .line 689
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/instagram/feed/d/l;->K:Landroid/net/Uri;

    .line 1118
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V

    .line 637
    iget-object v0, p0, Lcom/instagram/feed/d/l;->N:Lcom/instagram/feed/d/e;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V

    .line 638
    iget-object v0, p0, Lcom/instagram/feed/d/l;->O:Lcom/instagram/feed/d/e;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Lcom/instagram/feed/d/b;)V

    .line 640
    invoke-direct {p0}, Lcom/instagram/feed/d/l;->at()V

    .line 641
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)V
    .locals 3
    .parameter

    .prologue
    .line 514
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->w()Lcom/instagram/model/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    .line 516
    iget-object v0, p1, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    .line 519
    :cond_0
    iget-object v0, p1, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 520
    invoke-direct {p1}, Lcom/instagram/feed/d/l;->as()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;

    .line 522
    :cond_1
    iget-object v0, p1, Lcom/instagram/feed/d/l;->G:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p1, Lcom/instagram/feed/d/l;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->G:Ljava/lang/String;

    .line 525
    :cond_2
    iget-object v0, p1, Lcom/instagram/feed/d/l;->F:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 526
    iget-object v0, p1, Lcom/instagram/feed/d/l;->F:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->F:Ljava/lang/String;

    .line 528
    :cond_3
    iget-wide v0, p1, Lcom/instagram/feed/d/l;->d:J

    iput-wide v0, p0, Lcom/instagram/feed/d/l;->d:J

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/CharSequence;

    .line 530
    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 531
    iget-object v0, p1, Lcom/instagram/feed/d/l;->b:Lcom/instagram/user/c/a;

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p1, Lcom/instagram/feed/d/l;->b:Lcom/instagram/user/c/a;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->b:Lcom/instagram/user/c/a;

    .line 535
    :cond_4
    iget-object v0, p1, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    .line 536
    iget v0, p1, Lcom/instagram/feed/d/l;->i:I

    iput v0, p0, Lcom/instagram/feed/d/l;->i:I

    .line 537
    iget v0, p1, Lcom/instagram/feed/d/l;->g:I

    iput v0, p0, Lcom/instagram/feed/d/l;->g:I

    .line 539
    iget-object v0, p1, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    .line 540
    iget-object v0, p0, Lcom/instagram/feed/d/l;->Q:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 541
    iget-object v2, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/feed/d/e;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 547
    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_1

    .line 550
    :cond_6
    iget-object v0, p1, Lcom/instagram/feed/d/l;->o:Lcom/instagram/venue/model/Venue;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->o:Lcom/instagram/venue/model/Venue;

    .line 551
    iget-object v0, p1, Lcom/instagram/feed/d/l;->p:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->p:Ljava/lang/Double;

    .line 552
    iget-object v0, p1, Lcom/instagram/feed/d/l;->q:Ljava/lang/Double;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->q:Ljava/lang/Double;

    .line 553
    iget-object v0, p1, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    .line 555
    iget-object v0, p1, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    .line 556
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    if-eqz v0, :cond_7

    .line 557
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v0, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    .line 560
    :cond_7
    iget-wide v0, p1, Lcom/instagram/feed/d/l;->n:J

    iput-wide v0, p0, Lcom/instagram/feed/d/l;->n:J

    .line 561
    iget-boolean v0, p1, Lcom/instagram/feed/d/l;->m:Z

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->m:Z

    .line 562
    iget-object v0, p1, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    .line 563
    iget-boolean v0, p1, Lcom/instagram/feed/d/l;->s:Z

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->s:Z

    .line 564
    iget-boolean v0, p1, Lcom/instagram/feed/d/l;->u:Z

    iput-boolean v0, p0, Lcom/instagram/feed/d/l;->u:Z

    .line 565
    iget v0, p1, Lcom/instagram/feed/d/l;->S:I

    iput v0, p0, Lcom/instagram/feed/d/l;->S:I

    .line 567
    iget-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_8

    .line 568
    iget-object v0, p1, Lcom/instagram/feed/d/l;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->I:Ljava/lang/String;

    .line 569
    iget-object v0, p1, Lcom/instagram/feed/d/l;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->J:Ljava/lang/String;

    .line 576
    :cond_8
    iget-object v0, p1, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_9

    .line 577
    iget-object v0, p1, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    .line 580
    :cond_9
    iget-object v0, p1, Lcom/instagram/feed/d/l;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->v:Ljava/lang/String;

    .line 582
    iget-object v0, p1, Lcom/instagram/feed/d/l;->T:Lcom/instagram/model/b/a;

    iput-object v0, p0, Lcom/instagram/feed/d/l;->T:Lcom/instagram/model/b/a;

    .line 583
    invoke-direct {p0, p1}, Lcom/instagram/feed/d/l;->b(Lcom/instagram/feed/d/l;)V

    .line 586
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->ak()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 587
    invoke-static {}, Lcom/instagram/feed/d/ak;->a()Lcom/instagram/feed/d/ak;

    move-result-object v0

    iget-wide v1, p1, Lcom/instagram/feed/d/l;->x:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/instagram/feed/d/ak;->a(Lcom/instagram/feed/d/l;J)V

    .line 589
    :cond_a
    iget-wide v0, p1, Lcom/instagram/feed/d/l;->y:J

    iput-wide v0, p0, Lcom/instagram/feed/d/l;->y:J

    .line 590
    iget-wide v0, p1, Lcom/instagram/feed/d/l;->U:J

    iput-wide v0, p0, Lcom/instagram/feed/d/l;->U:J

    .line 592
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 593
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 918
    invoke-static {}, Lcom/instagram/common/j/g;->a()Lcom/instagram/common/j/b;

    move-result-object v0

    new-instance v1, Lcom/instagram/feed/d/t;

    iget-object v2, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/instagram/feed/d/t;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/j/b;->b(Lcom/instagram/common/j/a;)V

    .line 919
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)Z
    .locals 3
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    iget-object v0, v0, Lcom/instagram/feed/d/p;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/instagram/feed/d/l;->r:Lcom/instagram/feed/d/p;

    iget-object v0, v0, Lcom/instagram/feed/d/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    .line 1152
    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const/4 v0, 0x1

    .line 1157
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aa()Z
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iget-object v0, v0, Lcom/instagram/feed/d/r;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ac()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iget-boolean v0, v0, Lcom/instagram/feed/d/r;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ad()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iget-object v0, v0, Lcom/instagram/feed/d/r;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ae()Ljava/util/List;
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
    .line 1198
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iget-object v0, v0, Lcom/instagram/feed/d/r;->i:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final af()Z
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iget-boolean v0, v0, Lcom/instagram/feed/d/r;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ag()Z
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/instagram/feed/d/l;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ah()Z
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/instagram/feed/d/l;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/instagram/feed/d/l;->t:Lcom/instagram/feed/d/r;

    iget-object v0, v0, Lcom/instagram/feed/d/r;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/instagram/feed/d/l;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final ak()Z
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final al()Lcom/instagram/model/b/a;
    .locals 1

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/instagram/feed/d/l;->T:Lcom/instagram/model/b/a;

    return-object v0
.end method

.method public final am()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    return-object v0
.end method

.method public final an()J
    .locals 2

    .prologue
    .line 1273
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->x:J

    return-wide v0
.end method

.method public final ao()J
    .locals 2

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->y:J

    return-wide v0
.end method

.method public final ap()J
    .locals 2

    .prologue
    .line 1286
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->U:J

    return-wide v0
.end method

.method public final aq()J
    .locals 2

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->D()Lcom/instagram/feed/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 945
    sget v0, Lcom/instagram/feed/d/l;->C:I

    if-nez v0, :cond_0

    .line 946
    invoke-static {p1}, Lcom/instagram/o/b;->a(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/instagram/feed/d/l;->C:I

    .line 948
    :cond_0
    sget-object v0, Lcom/instagram/feed/d/m;->a:[I

    sget v1, Lcom/instagram/feed/d/l;->C:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 953
    iget-object v0, p0, Lcom/instagram/feed/d/l;->H:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 950
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->G:Ljava/lang/String;

    goto :goto_0

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 764
    iput-object v0, p0, Lcom/instagram/feed/d/l;->N:Lcom/instagram/feed/d/e;

    .line 765
    iput-object v0, p0, Lcom/instagram/feed/d/l;->O:Lcom/instagram/feed/d/e;

    .line 766
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 1277
    iput-wide p1, p0, Lcom/instagram/feed/d/l;->x:J

    .line 1278
    invoke-static {p0}, Lcom/instagram/feed/d/v;->a(Lcom/instagram/feed/d/l;)V

    .line 1279
    return-void
.end method

.method public final b(Lcom/instagram/feed/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Lcom/instagram/feed/d/l;->Q:Lcom/instagram/feed/d/e;

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    .line 649
    invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->c(Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 651
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1170
    iput-boolean p1, p0, Lcom/instagram/feed/d/l;->s:Z

    .line 1171
    return-void
.end method

.method public final c()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/instagram/feed/d/l;->b:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 978
    iget-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->m()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/instagram/o/g/a;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/CharSequence;

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->D:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 1290
    iput-wide p1, p0, Lcom/instagram/feed/d/l;->U:J

    .line 1291
    return-void
.end method

.method public final c(Lcom/fasterxml/jackson/a/l;)V
    .locals 4
    .parameter

    .prologue
    .line 709
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 710
    const/4 v0, 0x0

    .line 711
    const-string v2, "comments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 712
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 713
    new-instance v1, Lcom/instagram/feed/d/e;

    invoke-direct {v1}, Lcom/instagram/feed/d/e;-><init>()V

    .line 714
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;

    if-eq v2, v3, :cond_1

    .line 715
    invoke-static {p1}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;

    move-result-object v2

    .line 716
    if-eqz v2, :cond_1

    .line 717
    invoke-virtual {v2}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 718
    invoke-virtual {v2, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    .line 719
    invoke-virtual {v1, v2}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    goto :goto_0

    .line 721
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 726
    goto :goto_0

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    if-nez v2, :cond_4

    .line 728
    iput-object v1, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    .line 755
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 758
    iget-object v1, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    if-lez v0, :cond_3

    .line 759
    iget-object v1, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    .line 761
    :cond_3
    return-void

    .line 730
    :cond_4
    iget-object v2, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v2, v1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/e;)Z

    goto :goto_1

    .line 732
    :cond_5
    const-string v2, "comment_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 733
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 734
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getValueAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    goto :goto_1

    .line 735
    :cond_6
    const-string v2, "has_more_comments"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 736
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 737
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getValueAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/instagram/feed/d/l;->m:Z

    goto :goto_1

    .line 738
    :cond_7
    const-string v2, "caption"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 739
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 740
    invoke-static {p1}, Lcom/instagram/feed/d/j;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/b;

    .line 741
    iget-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    if-eqz v1, :cond_2

    .line 742
    iget-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 743
    iget-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    invoke-virtual {v1, p0}, Lcom/instagram/feed/d/b;->a(Lcom/instagram/feed/d/l;)V

    goto :goto_1

    .line 745
    :cond_8
    const/4 v0, 0x1

    .line 746
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    goto :goto_1

    .line 749
    :cond_9
    const-string v2, "next_max_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 751
    invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getValueAsLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/instagram/feed/d/l;->n:J

    goto/16 :goto_1
.end method

.method public final c(Lcom/instagram/feed/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-boolean v0, p0, Lcom/instagram/feed/d/l;->R:Z

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/instagram/feed/d/l;->P:Lcom/instagram/feed/d/e;

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;)Z

    .line 1024
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/feed/d/l;->b()V

    .line 1026
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 1027
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z

    .line 666
    iget-object v0, p0, Lcom/instagram/feed/d/l;->N:Lcom/instagram/feed/d/e;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z

    .line 667
    iget-object v0, p0, Lcom/instagram/feed/d/l;->O:Lcom/instagram/feed/d/e;

    invoke-static {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/e;Ljava/lang/String;)Z

    .line 669
    invoke-direct {p0}, Lcom/instagram/feed/d/l;->au()V

    .line 670
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/instagram/feed/d/b;
    .locals 3
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    invoke-virtual {v0}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/b;

    .line 826
    invoke-virtual {v0}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/instagram/feed/d/l;->F:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1299
    if-ne p0, p1, :cond_1

    .line 1304
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 1300
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1302
    :cond_3
    check-cast p1, Lcom/instagram/feed/d/l;

    .line 1304
    .end local p1
    iget-object v2, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lcom/instagram/feed/d/l;->L:Ljava/lang/String;

    .line 888
    return-void
.end method

.method final g(Ljava/lang/String;)Lcom/instagram/model/b/a;
    .locals 3
    .parameter

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/instagram/feed/d/l;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/b/a;

    .line 1265
    invoke-virtual {v0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/instagram/feed/d/l;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/feed/d/l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/instagram/feed/d/l;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 777
    iget v0, p0, Lcom/instagram/feed/d/l;->g:I

    return v0
.end method

.method public final k()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/d/l;->h:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 785
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 789
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->d:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/instagram/feed/d/l;->m:Z

    return v0
.end method

.method public final o()J
    .locals 2

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/instagram/feed/d/l;->n:J

    return-wide v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Lcom/instagram/feed/d/l;->S:I

    return v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/instagram/feed/d/l;->i:I

    return v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 816
    iget v0, p0, Lcom/instagram/feed/d/l;->i:I

    sget v1, Lcom/instagram/feed/d/o;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/instagram/feed/d/l;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public final t()Lcom/instagram/feed/d/e;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/instagram/feed/d/l;->M:Lcom/instagram/feed/d/e;

    return-object v0
.end method

.method public final u()Lcom/instagram/feed/d/b;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/instagram/feed/d/l;->k:Lcom/instagram/feed/d/b;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lcom/instagram/feed/d/l;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Lcom/instagram/model/a/a;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/instagram/feed/d/l;->c:Lcom/instagram/model/a/a;

    return-object v0
.end method

.method public final x()Z
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/instagram/feed/d/l;->L:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/feed/d/l;->L:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/instagram/feed/d/l;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final z()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 915
    return-void
.end method
