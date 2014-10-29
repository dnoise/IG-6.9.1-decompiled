.class public final Landroid/support/v4/app/bb;
.super Landroid/support/v4/app/bk;
.source "NotificationCompat.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1394
    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    .line 1392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;

    .line 1395
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ba;)V
    .locals 1
    .parameter

    .prologue
    .line 1397
    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    .line 1392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;

    .line 1398
    invoke-virtual {p0, p1}, Landroid/support/v4/app/bb;->a(Landroid/support/v4/app/ba;)V

    .line 1399
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1
    .parameter

    .prologue
    .line 1414
    iput-object p1, p0, Landroid/support/v4/app/bb;->f:Ljava/lang/CharSequence;

    .line 1415
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/bb;->g:Z

    .line 1416
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;
    .locals 1
    .parameter

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/support/v4/app/bb;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    return-object p0
.end method
