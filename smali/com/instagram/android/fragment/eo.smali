.class public final Lcom/instagram/android/fragment/eo;
.super Lcom/instagram/android/fragment/eu;
.source "ShortUrlFeedFragment.java"


# instance fields
.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:Z

.field private final ah:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/android/fragment/eu;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/eo;->af:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/eo;->ag:Z

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/eo;->ah:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/eo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->ah:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/eo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/instagram/android/fragment/eo;->ae:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->ad:Lcom/instagram/common/a/a/g;

    new-instance v1, Lcom/instagram/android/feed/b/a/b;

    invoke-direct {v1, p1}, Lcom/instagram/android/feed/b/a/b;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/instagram/android/fragment/ep;

    invoke-direct {v2, p0}, Lcom/instagram/android/fragment/ep;-><init>(Lcom/instagram/android/fragment/eo;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/feed/b/a/b;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/g;->a(Lcom/instagram/common/a/a/a;)V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/eo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/instagram/android/fragment/eo;->ag:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/fragment/eo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/fragment/eo;->ae:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final G()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/instagram/android/fragment/eu;->G()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/eo;->af:Z

    .line 57
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/eu;->a(Landroid/os/Bundle;)V

    .line 42
    if-eqz p1, :cond_0

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/eo;->af:Z

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/fragment/eo;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/eo;->a(Ljava/lang/String;)V

    .line 51
    :cond_1
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 122
    sget v0, Lcom/facebook/aw;->action_bar_title_logo:I

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(I)Landroid/view/View;

    .line 123
    new-instance v0, Lcom/instagram/android/fragment/er;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/er;-><init>(Lcom/instagram/android/fragment/eo;)V

    invoke-interface {p1, v1, v0}, Lcom/instagram/a/b;->a(ZLandroid/view/View$OnClickListener;)V

    .line 129
    invoke-interface {p1, v1}, Lcom/instagram/a/b;->a(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/instagram/android/fragment/eo;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->b(Z)V

    .line 131
    new-instance v0, Lcom/instagram/android/fragment/es;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/es;-><init>(Lcom/instagram/android/fragment/eo;)V

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    const-string v0, "src"

    const-string v1, "shortURL"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public final ad()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/instagram/android/fragment/eo;->af:Z

    return v0
.end method

.method protected final d(Z)Lcom/instagram/feed/a/h;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/instagram/feed/a/h",
            "<",
            "Lcom/instagram/feed/a/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/instagram/android/fragment/et;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/eo;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/fragment/et;-><init>(Lcom/instagram/android/fragment/eo;Lcom/instagram/feed/f/a;Z)V

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/instagram/android/fragment/eu;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/fragment/eo;->ag:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    const-string v0, "feed_short_url"

    return-object v0
.end method
