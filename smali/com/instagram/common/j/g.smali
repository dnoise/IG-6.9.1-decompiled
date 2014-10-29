.class public final Lcom/instagram/common/j/g;
.super Ljava/lang/Object;
.source "IgGlobalEventBus.java"


# static fields
.field private static a:Lcom/instagram/common/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/instagram/common/j/b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/j/b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/instagram/common/j/g;->a:Lcom/instagram/common/j/b;

    return-void
.end method

.method public static a()Lcom/instagram/common/j/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/instagram/common/j/g;->a:Lcom/instagram/common/j/b;

    return-object v0
.end method
