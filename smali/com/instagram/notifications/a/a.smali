.class public final Lcom/instagram/notifications/a/a;
.super Ljava/lang/Object;
.source "IgCollapseKey.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "like"

    sput-object v0, Lcom/instagram/notifications/a/a;->a:Ljava/lang/String;

    .line 16
    const-string v0, "comment"

    sput-object v0, Lcom/instagram/notifications/a/a;->b:Ljava/lang/String;

    .line 17
    const-string v0, "popular"

    sput-object v0, Lcom/instagram/notifications/a/a;->c:Ljava/lang/String;

    .line 19
    const-string v0, "direct_share"

    sput-object v0, Lcom/instagram/notifications/a/a;->d:Ljava/lang/String;

    .line 20
    const-string v0, "direct_share_seen"

    sput-object v0, Lcom/instagram/notifications/a/a;->e:Ljava/lang/String;

    .line 21
    const-string v0, "direct_share_like"

    sput-object v0, Lcom/instagram/notifications/a/a;->f:Ljava/lang/String;

    .line 22
    const-string v0, "direct_share_commented"

    sput-object v0, Lcom/instagram/notifications/a/a;->g:Ljava/lang/String;

    .line 24
    const-string v0, "direct_share_pending"

    sput-object v0, Lcom/instagram/notifications/a/a;->h:Ljava/lang/String;

    .line 26
    const-string v0, "contactjoined"

    sput-object v0, Lcom/instagram/notifications/a/a;->i:Ljava/lang/String;

    .line 27
    const-string v0, "usertag"

    sput-object v0, Lcom/instagram/notifications/a/a;->j:Ljava/lang/String;

    .line 28
    const-string v0, "post"

    sput-object v0, Lcom/instagram/notifications/a/a;->k:Ljava/lang/String;

    .line 30
    const-string v0, "default"

    sput-object v0, Lcom/instagram/notifications/a/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    sget-object v0, Lcom/instagram/notifications/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instagram/notifications/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instagram/notifications/a/a;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/instagram/notifications/a/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/instagram/notifications/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
