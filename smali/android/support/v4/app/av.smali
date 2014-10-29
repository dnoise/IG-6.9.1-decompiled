.class public final Landroid/support/v4/app/av;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Landroid/support/v4/app/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 611
    new-instance v0, Landroid/support/v4/app/bd;

    invoke-direct {v0}, Landroid/support/v4/app/bd;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    .line 625
    :goto_0
    return-void

    .line 612
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 613
    new-instance v0, Landroid/support/v4/app/bj;

    invoke-direct {v0}, Landroid/support/v4/app/bj;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    goto :goto_0

    .line 614
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 615
    new-instance v0, Landroid/support/v4/app/bi;

    invoke-direct {v0}, Landroid/support/v4/app/bi;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    goto :goto_0

    .line 616
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 617
    new-instance v0, Landroid/support/v4/app/bh;

    invoke-direct {v0}, Landroid/support/v4/app/bh;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    goto :goto_0

    .line 618
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 619
    new-instance v0, Landroid/support/v4/app/bg;

    invoke-direct {v0}, Landroid/support/v4/app/bg;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    goto :goto_0

    .line 620
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    .line 621
    new-instance v0, Landroid/support/v4/app/bf;

    invoke-direct {v0}, Landroid/support/v4/app/bf;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    goto :goto_0

    .line 623
    :cond_5
    new-instance v0, Landroid/support/v4/app/be;

    invoke-direct {v0}, Landroid/support/v4/app/be;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 2406
    sget-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    invoke-interface {v0, p0}, Landroid/support/v4/app/bc;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Landroid/support/v4/app/bc;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/bc;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Landroid/support/v4/app/av;->b(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Landroid/support/v4/app/av;->b(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/at;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/at;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/aw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aw;

    .line 575
    invoke-interface {p0, v0}, Landroid/support/v4/app/at;->a(Landroid/support/v4/app/bo;)V

    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/au;Landroid/support/v4/app/bk;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 581
    if-eqz p1, :cond_0

    .line 582
    instance-of v0, p1, Landroid/support/v4/app/az;

    if-eqz v0, :cond_1

    .line 583
    check-cast p1, Landroid/support/v4/app/az;

    .line 584
    iget-object v0, p1, Landroid/support/v4/app/az;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/az;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/az;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/az;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/au;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/bb;

    if-eqz v0, :cond_2

    .line 590
    check-cast p1, Landroid/support/v4/app/bb;

    .line 591
    iget-object v0, p1, Landroid/support/v4/app/bb;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/bb;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/bb;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/au;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 596
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/ay;

    if-eqz v0, :cond_0

    .line 597
    check-cast p1, Landroid/support/v4/app/ay;

    .line 598
    iget-object v1, p1, Landroid/support/v4/app/ay;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/ay;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/ay;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ay;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/ay;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/ay;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/bt;->a(Landroid/support/v4/app/au;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
