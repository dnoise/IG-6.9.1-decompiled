.class final Lcom/instagram/cliffjumper/edit/common/ui/j;
.super Lcom/instagram/cliffjumper/edit/common/ui/h;
.source "TileButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 420
    const/16 v0, 0x19

    sput v0, Lcom/instagram/cliffjumper/edit/common/ui/j;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/common/ui/h;-><init>(Landroid/view/View;)V

    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/j;->b:Landroid/os/Handler;

    .line 427
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/j;->b:Landroid/os/Handler;

    sget v1, Lcom/instagram/cliffjumper/edit/common/ui/j;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/j;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/instagram/cliffjumper/edit/common/ui/j;->a(J)V

    .line 442
    return-void
.end method
