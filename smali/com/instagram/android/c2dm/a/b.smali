.class public Lcom/instagram/android/c2dm/a/b;
.super Ljava/lang/Object;
.source "NewsTabNotificationDelegate.java"

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
            "<",
            "Lcom/instagram/android/c2dm/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/instagram/android/c2dm/a/b;

    sput-object v0, Lcom/instagram/android/c2dm/a/b;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/instagram/android/c2dm/a/b;->b:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private static a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/instagram/notifications/a/b;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Lcom/instagram/notifications/a/b;->a(Ljava/lang/String;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 2
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
    .line 41
    iget-object v0, p0, Lcom/instagram/android/c2dm/a/b;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/instagram/android/c2dm/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/support/v4/app/ba;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/instagram/android/c2dm/a/b;->b:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/instagram/android/c2dm/a/c;->a(Landroid/content/Context;Ljava/util/List;Landroid/support/v4/app/ba;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)Landroid/app/Notification;
    .locals 1
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
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-static {p1}, Lcom/instagram/android/c2dm/a/b;->b(Ljava/lang/String;)Lcom/instagram/notifications/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "newstab"

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    check-cast p1, Lcom/instagram/notifications/a/b;

    invoke-static {p1}, Lcom/instagram/android/c2dm/a/b;->a(Lcom/instagram/notifications/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/instagram/android/c2dm/a/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/l/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
