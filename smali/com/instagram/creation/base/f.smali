.class public final Lcom/instagram/creation/base/f;
.super Ljava/lang/Object;
.source "MediaScannerUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {p0, v0, p2}, Lcom/instagram/creation/base/f;->a(Landroid/content/Context;Ljava/util/Queue;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Queue;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/instagram/creation/base/g;

    invoke-direct {v0, p1, p2}, Lcom/instagram/creation/base/g;-><init>(Ljava/util/Queue;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Lcom/instagram/creation/base/g;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method
