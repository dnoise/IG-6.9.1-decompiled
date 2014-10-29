.class final Lcom/instagram/android/feed/a/a/z;
.super Lcom/instagram/common/a/a/j;
.source "MediaOptionsDialog.java"


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
.field final synthetic a:Lcom/instagram/android/feed/a/a/x;

.field private final b:Lcom/instagram/feed/d/l;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/a/a/x;Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/z;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-direct {p0}, Lcom/instagram/common/a/a/j;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/a/a/x;Lcom/instagram/feed/d/l;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/a/z;-><init>(Lcom/instagram/android/feed/a/a/x;Lcom/instagram/feed/d/l;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 291
    invoke-super {p0}, Lcom/instagram/common/a/a/j;->a()V

    .line 293
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(I)V

    .line 294
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 296
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->r()V

    .line 298
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->G()V

    .line 299
    return-void
.end method

.method public final b(Lcom/instagram/common/l/a/e;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<",
            "Lcom/instagram/api/k/a/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/instagram/common/a/a/j;->b(Lcom/instagram/common/l/a/e;)V

    .line 305
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(I)V

    .line 306
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V

    .line 308
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/z;->b:Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->q()V

    .line 310
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->G()V

    .line 311
    return-void
.end method
