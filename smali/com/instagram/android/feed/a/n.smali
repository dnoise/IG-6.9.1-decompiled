.class public final Lcom/instagram/android/feed/a/n;
.super Lcom/instagram/android/feed/a/m;
.source "UserDetailFeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/feed/a/m",
        "<",
        "Lcom/instagram/user/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/instagram/android/feed/a/b/ar;

.field private j:Z

.field private k:Z

.field private l:Lcom/instagram/user/follow/h;


# direct methods
.method public constructor <init>(Lcom/instagram/android/fragment/a;IZLcom/instagram/user/follow/h;Lcom/instagram/android/feed/a/b/ar;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/a/m;-><init>(Lcom/instagram/android/fragment/a;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/feed/a/n;->g:I

    .line 34
    iput-boolean p3, p0, Lcom/instagram/android/feed/a/n;->k:Z

    .line 35
    iput-object p4, p0, Lcom/instagram/android/feed/a/n;->l:Lcom/instagram/user/follow/h;

    .line 36
    iput-object p5, p0, Lcom/instagram/android/feed/a/n;->i:Lcom/instagram/android/feed/a/b/ar;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/a/n;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/instagram/android/feed/a/n;->j:Z

    return p1
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/feed/a/n;->l:Lcom/instagram/user/follow/h;

    invoke-static {p1, v0}, Lcom/instagram/android/feed/a/b/af;->a(Landroid/content/Context;Lcom/instagram/user/follow/h;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/instagram/android/feed/a/n;->h:Ljava/util/List;

    .line 92
    return-void
.end method

.method protected final b(Landroid/content/Context;Landroid/view/View;I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/b/as;

    invoke-virtual {p0, p3}, Lcom/instagram/android/feed/a/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/user/c/a;

    iget v2, p0, Lcom/instagram/android/feed/a/n;->g:I

    iget-boolean v3, p0, Lcom/instagram/android/feed/a/n;->k:Z

    iget-boolean v4, p0, Lcom/instagram/android/feed/a/n;->j:Z

    iget-object v5, p0, Lcom/instagram/android/feed/a/n;->h:Ljava/util/List;

    iget-object v7, p0, Lcom/instagram/android/feed/a/n;->b:Landroid/support/v4/app/an;

    iget-object v8, p0, Lcom/instagram/android/feed/a/n;->c:Landroid/support/v4/app/s;

    iget-object v10, p0, Lcom/instagram/android/feed/a/n;->i:Lcom/instagram/android/feed/a/b/ar;

    new-instance v11, Lcom/instagram/android/feed/a/o;

    invoke-direct {v11, p0}, Lcom/instagram/android/feed/a/o;-><init>(Lcom/instagram/android/feed/a/n;)V

    move-object v6, p1

    move-object v9, p0

    invoke-static/range {v0 .. v11}, Lcom/instagram/android/feed/a/b/af;->a(Lcom/instagram/android/feed/a/b/as;Lcom/instagram/user/c/a;IZZLjava/util/List;Landroid/content/Context;Landroid/support/v4/app/an;Landroid/support/v4/app/s;Lcom/instagram/android/feed/a/n;Lcom/instagram/android/feed/a/b/ar;Lcom/instagram/android/i/d;)V

    .line 78
    return-void
.end method

.method public final h(I)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput p1, p0, Lcom/instagram/android/feed/a/n;->f:I

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/a/n;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public final i(I)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/instagram/android/feed/a/n;->g:I

    .line 87
    invoke-virtual {p0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/instagram/android/feed/a/n;->f:I

    sget v1, Lcom/instagram/api/j/k;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/instagram/android/feed/a/n;->f:I

    sget v1, Lcom/instagram/api/j/k;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
