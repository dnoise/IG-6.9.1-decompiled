.class public final Landroid/support/v4/app/ba;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field g:Landroid/graphics/Bitmap;

.field h:Ljava/lang/CharSequence;

.field i:I

.field j:I

.field k:Z

.field l:Landroid/support/v4/app/bk;

.field m:Ljava/lang/CharSequence;

.field n:I

.field o:I

.field p:Z

.field q:Ljava/lang/String;

.field r:Z

.field s:Ljava/lang/String;

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/aw;",
            ">;"
        }
    .end annotation
.end field

.field u:Z

.field v:Landroid/os/Bundle;

.field w:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ba;->t:Ljava/util/ArrayList;

    .line 669
    iput-boolean v3, p0, Landroid/support/v4/app/ba;->u:Z

    .line 672
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    .line 686
    iput-object p1, p0, Landroid/support/v4/app/ba;->a:Landroid/content/Context;

    .line 689
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 690
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 691
    iput v3, p0, Landroid/support/v4/app/ba;->j:I

    .line 692
    return-void
.end method

.method private a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 999
    if-eqz p2, :cond_0

    .line 1000
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1004
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/ba;
    .locals 2

    .prologue
    .line 965
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ba;->a(IZ)V

    .line 966
    return-object p0
.end method

.method public final a(I)Landroid/support/v4/app/ba;
    .locals 1
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 728
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/app/ba;
    .locals 1
    .parameter

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 700
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Landroid/support/v4/app/ba;->d:Landroid/app/PendingIntent;

    .line 824
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ba;
    .locals 0
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Landroid/support/v4/app/ba;->g:Landroid/graphics/Bitmap;

    .line 883
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/bk;)Landroid/support/v4/app/ba;
    .locals 1
    .parameter

    .prologue
    .line 1174
    iget-object v0, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;

    if-eq v0, p1, :cond_0

    .line 1175
    iput-object p1, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;

    .line 1176
    iget-object v0, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Landroid/support/v4/app/ba;->l:Landroid/support/v4/app/bk;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bk;->a(Landroid/support/v4/app/ba;)V

    .line 1180
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
    .locals 0
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Landroid/support/v4/app/ba;->b:Ljava/lang/CharSequence;

    .line 752
    return-object p0
.end method

.method public final a(Z)Landroid/support/v4/app/ba;
    .locals 1
    .parameter

    .prologue
    .line 945
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ba;->a(IZ)V

    .line 946
    return-object p0
.end method

.method public final b()Landroid/support/v4/app/ba;
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ba;->u:Z

    .line 977
    return-object p0
.end method

.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;
    .locals 1
    .parameter

    .prologue
    .line 835
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 836
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Landroid/support/v4/app/ba;->c:Ljava/lang/CharSequence;

    .line 760
    return-object p0
.end method

.method public final c()Landroid/support/v4/app/ba;
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 992
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Landroid/support/v4/app/ba;->h:Ljava/lang/CharSequence;

    .line 792
    return-object p0
.end method

.method public final d()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 1205
    invoke-static {}, Landroid/support/v4/app/av;->a()Landroid/support/v4/app/bc;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/bc;->a(Landroid/support/v4/app/ba;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;
    .locals 1
    .parameter

    .prologue
    .line 863
    iget-object v0, p0, Landroid/support/v4/app/ba;->w:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 864
    return-object p0
.end method
