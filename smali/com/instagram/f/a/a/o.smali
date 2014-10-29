.class public final Lcom/instagram/f/a/a/o;
.super Lcom/instagram/f/a/a/a;
.source "IgnoreAllPendingDirectShareRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    sget-object v0, Lcom/instagram/f/a/a/b;->a:Lcom/instagram/f/a/a/b;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/instagram/f/a/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;Lcom/instagram/f/a/a/b;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const-string v0, "blacklist"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
