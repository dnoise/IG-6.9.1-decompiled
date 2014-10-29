.class public final Lcom/instagram/android/feed/e/k;
.super Ljava/lang/Object;
.source "MediaLinkBroadcastHandler.java"


# static fields
.field private static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Landroid/support/v4/app/Fragment;

.field private final c:Lcom/instagram/feed/g/a;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    sput-object v0, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    const-string v1, "Media.COMMENT_MENTION_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    const-string v1, "Media.COMMENT_HASHTAG_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    const-string v1, "Media.USER_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    const-string v1, "Media.NUMBER_LIKES_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    const-string v1, "Media.NUMBER_COMMENTS_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    const-string v1, "PeopleTag.BROADCAST_TAG_CLICKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/instagram/android/feed/e/l;

    invoke-direct {v0, p0}, Lcom/instagram/android/feed/e/l;-><init>(Lcom/instagram/android/feed/e/k;)V

    iput-object v0, p0, Lcom/instagram/android/feed/e/k;->d:Landroid/content/BroadcastReceiver;

    .line 113
    iput-object p1, p0, Lcom/instagram/android/feed/e/k;->b:Landroid/support/v4/app/Fragment;

    .line 114
    iput-object p2, p0, Lcom/instagram/android/feed/e/k;->c:Lcom/instagram/feed/g/a;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/feed/e/k;)Lcom/instagram/feed/g/a;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/feed/e/k;->c:Lcom/instagram/feed/g/a;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/instagram/android/feed/e/k;->b(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/instagram/android/feed/e/k;->b(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/feed/e/k;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/feed/e/k;->b:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private static b(Landroid/content/Intent;Lcom/instagram/feed/g/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    const-string v1, "Media.EXTRA_MEDIA_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v1

    const-string v2, "Media.EXTRA_USER_ID"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v1

    .line 142
    invoke-static {v1, v0, p1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 143
    return-void
.end method

.method private static b(Landroid/content/Intent;Ljava/lang/String;Lcom/instagram/feed/g/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    const-string v1, "Media.EXTRA_MEDIA_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 129
    invoke-static {p1, v0, p2}, Lcom/instagram/feed/c/g;->b(Ljava/lang/String;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 130
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/instagram/android/feed/e/k;->d:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/instagram/android/feed/e/k;->a:Landroid/content/IntentFilter;

    invoke-static {v0, v1}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 119
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/instagram/android/feed/e/k;->d:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method
