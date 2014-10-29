.class public final Lcom/instagram/common/g/b/e;
.super Landroid/support/v4/c/c;
.source "CompressedBackedLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/c/c",
        "<TT;",
        "Lcom/instagram/common/g/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    const/high16 v0, 0x1e0

    const/16 v1, 0x15e

    const/16 v2, 0x3c

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/c/c;-><init>(III)V

    .line 19
    return-void
.end method

.method private static a(Lcom/instagram/common/g/b/d;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/g/b/d;",
            ")I"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/instagram/common/g/b/d;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected final synthetic c(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 9
    check-cast p1, Lcom/instagram/common/g/b/d;

    invoke-static {p1}, Lcom/instagram/common/g/b/e;->a(Lcom/instagram/common/g/b/d;)I

    move-result v0

    return v0
.end method
