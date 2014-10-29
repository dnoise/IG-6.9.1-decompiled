.class public Lcom/instagram/android/c2dm/a/d;
.super Ljava/lang/Object;
.source "RequestedDirectShareNotificationDelegate.java"

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
    .line 27
    const-class v0, Lcom/instagram/android/c2dm/a/d;

    sput-object v0, Lcom/instagram/android/c2dm/a/d;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/instagram/android/c2dm/a/d;->b:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private static a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Lcom/instagram/notifications/a/b;->a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 6
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
    const/4 v3, 0x1

    .line 37
    iget-object v0, p0, Lcom/instagram/android/c2dm/a/d;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/instagram/android/c2dm/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/app/ba;

    move-result-object v0

    .line 47
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v1, Landroid/support/v4/app/bb;

    invoke-direct {v1, v0}, Landroid/support/v4/app/bb;-><init>(Landroid/support/v4/app/ba;)V

    .line 51
    iget-object v0, p0, Lcom/instagram/android/c2dm/a/d;->b:Landroid/content/Context;

    sget v2, Lcom/facebook/az;->directshare_requested_direct_shares_aggregate_notification:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    .line 54
    invoke-static {v1, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/support/v4/app/bb;Ljava/util/List;)V

    .line 55
    invoke-virtual {v1}, Landroid/support/v4/app/bb;->a()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;
    .locals 2
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
    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-static {p1}, Lcom/instagram/android/c2dm/a/d;->b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "directshare_request"

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    check-cast p1, Lcom/instagram/notifications/a/b;

    invoke-static {p1}, Lcom/instagram/android/c2dm/a/d;->a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/instagram/android/c2dm/a/d;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
