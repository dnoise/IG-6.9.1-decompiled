.class final Lcom/instagram/android/directshare/f/b;
.super Lcom/instagram/common/a/a/j;
.source "ClearInboxNewCountUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/j",
        "<",
        "Lcom/instagram/f/a/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/f/a;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/instagram/android/directshare/f/a;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/directshare/f/b;->a:Lcom/instagram/android/directshare/f/a;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 65
    iput-wide p2, p0, Lcom/instagram/android/directshare/f/b;->b:J

    .line 66
    return-void
.end method

.method private a(Lcom/instagram/f/a/a/e;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Lcom/instagram/f/a/a/e;->b()Lcom/instagram/f/b/a;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/directshare/f/c;->a(Lcom/instagram/f/b/a;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 72
    iget-wide v0, p0, Lcom/instagram/android/directshare/f/b;->b:J

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/f/c;->a(J)V

    .line 73
    return-void
.end method

.method public final a(Lcom/instagram/common/l/a/e;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/f/a/a/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->a(Lcom/instagram/common/l/a/e;)V

    .line 85
    iget-object v0, p0, Lcom/instagram/android/directshare/f/b;->a:Lcom/instagram/android/directshare/f/a;

    invoke-static {v0}, Lcom/instagram/android/directshare/f/a;->a(Lcom/instagram/android/directshare/f/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/instagram/android/directshare/f/b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    check-cast p1, Lcom/instagram/f/a/a/e;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/f/b;->a(Lcom/instagram/f/a/a/e;)V

    return-void
.end method
