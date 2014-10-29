.class public final Lcom/instagram/android/directshare/c/t;
.super Ljava/lang/Object;
.source "InboxStore.java"

# interfaces
.implements Lcom/instagram/android/feed/e/d;
.implements Lcom/instagram/common/d/a;


# instance fields
.field private a:Z

.field private b:Lcom/instagram/common/a/a/k;

.field private c:Lcom/instagram/feed/f/a;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/f/a/b/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/t;->b:Lcom/instagram/common/a/a/k;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/t;->d:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/instagram/android/directshare/c/u;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/u;-><init>(Lcom/instagram/android/directshare/c/t;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    .line 72
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-static {}, Lcom/instagram/common/h/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/instagram/common/d/j;->a()Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "InboxFragment.REFRESH_INBOX"

    invoke-interface {v0, v1, p0}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-interface {v0, v1, p0}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    const-string v1, "InboxFragment.REMOVE_MEDIA_FROM_INBOX"

    invoke-interface {v0, v1, p0}, Lcom/instagram/common/d/g;->a(Ljava/lang/String;Lcom/instagram/common/d/a;)Lcom/instagram/common/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/g;->a()Lcom/instagram/common/d/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/common/d/h;->b()V

    .line 79
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/t;-><init>()V

    return-void
.end method

.method public static a()Lcom/instagram/android/directshare/c/t;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/instagram/android/directshare/c/w;->a:Lcom/instagram/android/directshare/c/t;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/directshare/c/t;Lcom/instagram/feed/f/a;)Lcom/instagram/feed/f/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/directshare/c/t;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->d:Ljava/util/Set;

    return-object v0
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 181
    iget-object v1, p0, Lcom/instagram/android/directshare/c/t;->b:Lcom/instagram/common/a/a/k;

    new-instance v2, Lcom/instagram/f/a/a/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    :goto_0
    invoke-direct {v2, v0}, Lcom/instagram/f/a/a/l;-><init>(Lcom/instagram/feed/f/a;)V

    new-instance v0, Lcom/instagram/android/directshare/c/v;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/instagram/android/directshare/c/v;-><init>(Lcom/instagram/android/directshare/c/t;ZB)V

    invoke-virtual {v2, v0}, Lcom/instagram/f/a/a/l;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 184
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/instagram/android/directshare/c/t;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/instagram/android/directshare/c/t;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/directshare/c/t;)Lcom/instagram/feed/f/a;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 132
    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-static {}, Lcom/instagram/feed/d/ad;->a()Lcom/instagram/feed/d/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/feed/d/ad;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/instagram/android/directshare/c/t;->a(Lcom/instagram/feed/d/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static k()V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "InboxFragment.UPDATE_INBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {v0}, Lcom/instagram/common/y/d;->a(Landroid/content/Intent;)Z

    .line 291
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput p1, p0, Lcom/instagram/android/directshare/c/t;->e:I

    .line 151
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    const-string v0, "InboxFragment.REFRESH_INBOX"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/instagram/android/directshare/c/t;->i()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v0, "InboxFragment.ADD_MEDIA_TO_INBOX"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const-string v0, "mediaId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/t;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->k()V

    goto :goto_0

    .line 270
    :cond_2
    const-string v0, "InboxFragment.REMOVE_MEDIA_FROM_INBOX"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "mediaId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/t;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/instagram/android/directshare/c/t;->k()V

    goto :goto_0
.end method

.method public final a(Lcom/instagram/common/a/a/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/f/a/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/t;->a:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/instagram/common/a/a/j;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/c/t;->c(Ljava/lang/String;)Z

    .line 281
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 122
    return-void
.end method

.method public final a(Lcom/instagram/feed/d/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/instagram/common/a/a/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/a/a/j",
            "<",
            "Lcom/instagram/f/a/b/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/instagram/android/directshare/c/t;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/instagram/android/directshare/c/t;->e:I

    iget-object v1, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    invoke-virtual {v0}, Lcom/instagram/feed/f/a;->b()Lcom/instagram/feed/f/b;

    move-result-object v0

    sget-object v1, Lcom/instagram/feed/f/b;->a:Lcom/instagram/feed/f/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/instagram/android/directshare/c/t;->a:Z

    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/directshare/c/t;->c:Lcom/instagram/feed/f/a;

    .line 143
    return-void
.end method

.method public final h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    iget v1, p0, Lcom/instagram/android/directshare/c/t;->e:I

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lcom/instagram/android/directshare/c/t;->e:I

    if-le v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/instagram/android/directshare/c/t;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    iget v2, p0, Lcom/instagram/android/directshare/c/t;->e:I

    if-lt v0, v2, :cond_2

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/t;->a(Z)V

    .line 174
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/directshare/c/t;->a(Z)V

    .line 178
    return-void
.end method
