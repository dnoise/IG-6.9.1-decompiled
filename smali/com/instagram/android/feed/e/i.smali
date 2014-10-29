.class final Lcom/instagram/android/feed/e/i;
.super Lcom/instagram/common/a/a/j;
.source "LikeUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;


# direct methods
.method constructor <init>(Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/instagram/android/feed/e/i;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/feed/e/i;->a:Lcom/instagram/feed/d/l;

    invoke-static {v0}, Lcom/instagram/feed/d/u;->a(Lcom/instagram/feed/d/l;)V

    .line 89
    return-void
.end method
