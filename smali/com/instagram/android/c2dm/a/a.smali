.class public Lcom/instagram/android/c2dm/a/a;
.super Ljava/lang/Object;
.source "DirectShareNotificationDelegate.java"

# interfaces
.implements Lcom/instagram/common/u/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/u/i",
        "<",
        "Lcom/instagram/notifications/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/instagram/android/c2dm/a/a;

    sput-object v0, Lcom/instagram/android/c2dm/a/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private static a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-static {p0}, Lcom/instagram/notifications/a/b;->a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/notifications/a/b;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/instagram/android/c2dm/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/app/ba;

    move-result-object v1

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/notifications/a/b;

    .line 56
    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Lcom/instagram/common/g/b/h;->a()Lcom/instagram/common/g/b/h;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/instagram/o/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/instagram/common/g/b/h;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 63
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 64
    invoke-virtual {v1}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_1
    new-instance v0, Landroid/support/v4/app/bb;

    invoke-direct {v0, v1}, Landroid/support/v4/app/bb;-><init>(Landroid/support/v4/app/ba;)V

    iget-object v1, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/az;->directshare_notification_permalink_aggregated:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v0

    .line 70
    invoke-static {v0, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/support/v4/app/bb;Ljava/util/List;)V

    .line 71
    invoke-virtual {v0}, Landroid/support/v4/app/bb;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/notifications/a/b;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/instagram/android/c2dm/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    const-class v3, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "ig"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "inbox"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    new-instance v2, Landroid/support/v4/app/ba;

    iget-object v3, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/ba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/support/v4/app/ba;->a()Landroid/support/v4/app/ba;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    sget v4, Lcom/facebook/az;->app_name:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    sget v4, Lcom/facebook/az;->directshare_notification_inbox_aggregated:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/ba;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;

    move-result-object v0

    sget v2, Lcom/facebook/au;->notification_icon:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ba;->a(I)Landroid/support/v4/app/ba;

    move-result-object v2

    .line 113
    if-eqz p2, :cond_1

    .line 114
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/notifications/a/b;

    .line 117
    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ba;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    .line 119
    const-string v3, "default"

    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v2}, Landroid/support/v4/app/ba;->c()Landroid/support/v4/app/ba;

    .line 122
    :cond_0
    const-string v3, "from_notification_id"

    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/c2dm/a/a;->b:Landroid/content/Context;

    const v3, 0xfb16

    const/high16 v4, 0x800

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 133
    invoke-virtual {v2, v0}, Landroid/support/v4/app/ba;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;

    .line 136
    new-instance v1, Landroid/support/v4/app/bb;

    invoke-direct {v1}, Landroid/support/v4/app/bb;-><init>()V

    .line 137
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/notifications/a/b;

    .line 141
    invoke-virtual {v0}, Lcom/instagram/notifications/a/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v2, v1}, Landroid/support/v4/app/ba;->a(Landroid/support/v4/app/bk;)Landroid/support/v4/app/ba;

    .line 146
    invoke-virtual {v2}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Lcom/instagram/android/c2dm/a/a;->b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "directshare"

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/instagram/notifications/a/b;

    invoke-static {p1}, Lcom/instagram/android/c2dm/a/a;->a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/instagram/android/c2dm/a/a;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
