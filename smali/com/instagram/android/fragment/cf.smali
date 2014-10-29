.class public final Lcom/instagram/android/fragment/cf;
.super Lcom/instagram/android/fragment/h;
.source "HashtagFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/android/fragment/h",
        "<",
        "Lcom/instagram/android/feed/a/j;",
        "Lcom/instagram/feed/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field private ae:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/h;-><init>()V

    .line 35
    new-instance v0, Lcom/instagram/android/fragment/cg;

    invoke-direct {v0, p0}, Lcom/instagram/android/fragment/cg;-><init>(Lcom/instagram/android/fragment/cf;)V

    iput-object v0, p0, Lcom/instagram/android/fragment/cf;->ae:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    new-instance v0, Lcom/instagram/ui/dialog/b;

    invoke-direct {v0, p0}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->content_advisory:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->show_posts:I

    new-instance v2, Lcom/instagram/android/fragment/ci;

    invoke-direct {v2, p3, p1, p4}, Lcom/instagram/android/fragment/ci;-><init>(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 108
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/instagram/android/j/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    invoke-static {p1, p2, p3}, Lcom/instagram/android/fragment/cf;->b(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p0, p2, v0, p1, p3}, Lcom/instagram/android/fragment/cf;->a(Landroid/content/Context;Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/instagram/android/fragment/cf;->b(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V

    return-void
.end method

.method private as()Lcom/instagram/android/feed/a/j;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/instagram/android/feed/a/j;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->Y()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/j;-><init>(Lcom/instagram/android/fragment/a;I)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Landroid/support/v4/app/s;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/instagram/o/f/f;->a()Lcom/instagram/o/f/e;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/instagram/o/f/e;->d(Landroid/support/v4/app/s;Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/base/a/a/a;->b(Ljava/lang/String;)Lcom/instagram/base/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 91
    return-void
.end method


# virtual methods
.method public final H()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/cf;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 58
    invoke-super {p0}, Lcom/instagram/android/fragment/h;->H()V

    .line 59
    return-void
.end method

.method protected final synthetic X()Lcom/instagram/android/feed/a/a;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/fragment/cf;->as()Lcom/instagram/android/feed/a/j;

    move-result-object v0

    return-object v0
.end method

.method protected final Y()I
    .locals 1

    .prologue
    .line 116
    sget v0, Lcom/instagram/android/feed/a/h;->b:I

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Landroid/os/Bundle;)V

    .line 45
    new-instance v1, Lcom/instagram/android/g/c;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/instagram/android/g/c;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->z()Landroid/support/v4/app/an;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/instagram/android/g/c;->a(Landroid/content/Context;Landroid/support/v4/app/an;)V

    .line 47
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/j;

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/j;->a(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/fragment/cf;->ae:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/instagram/android/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 51
    invoke-virtual {v1}, Lcom/instagram/android/g/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/h/a/a;->a(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/cf;->c(Z)V

    .line 53
    return-void
.end method

.method public final a(Lcom/instagram/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/h;->a(Lcom/instagram/a/b;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instagram/a/b;->a(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
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
    .line 126
    const-string v0, "src"

    const-string v1, "hashtag"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "q"

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "HashtagFeedFragment.ARGUMENT_TAG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
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
    .line 63
    new-instance v0, Lcom/instagram/android/fragment/ch;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/cf;->af()Lcom/instagram/feed/f/a;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/fragment/ch;-><init>(Lcom/instagram/android/fragment/cf;Lcom/instagram/feed/f/a;Z)V

    return-object v0
.end method

.method public final j_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "feed_hashtag"

    return-object v0
.end method
