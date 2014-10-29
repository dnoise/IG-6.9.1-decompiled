.class public final Lcom/facebook/e/b/a/a;
.super Ljava/lang/Object;
.source "ParcelSizeLogger.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/e/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/e/b/a/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter

    .prologue
    .line 23
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/e/b/a/a;->b(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    .line 27
    :cond_0
    return-object p0
.end method

.method public static b(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/facebook/e/b/a/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 32
    return-object p0
.end method
