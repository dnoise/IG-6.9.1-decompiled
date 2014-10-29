.class public Lcom/instagram/o/b/a;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"


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

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/instagram/common/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/instagram/o/b/a;

    sput-object v0, Lcom/instagram/o/b/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/instagram/common/a/a/o;

    invoke-direct {v0}, Lcom/instagram/common/a/a/o;-><init>()V

    iput-object v0, p0, Lcom/instagram/o/b/a;->d:Lcom/instagram/common/a/a/k;

    .line 48
    iput-object p1, p0, Lcom/instagram/o/b/a;->b:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/instagram/o/b/a;->b:Landroid/content/Context;

    const-string v1, "autoUpdatePreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/o/b/a;->c:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/instagram/o/b/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/o/b/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/instagram/o/b/b;

    invoke-direct {v0, p0, p1}, Lcom/instagram/o/b/b;-><init>(Lcom/instagram/o/b/a;I)V

    .line 113
    sget-object v1, Lcom/instagram/o/b/a;->a:Ljava/lang/Class;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/instagram/o/b/a;->a(J)V

    .line 115
    new-instance v1, Lcom/instagram/o/b/h;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/o/b/h;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/instagram/o/b/a;->d:Lcom/instagram/common/a/a/k;

    invoke-virtual {v1, v0}, Lcom/instagram/o/b/h;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 118
    return-void
.end method

.method private a(J)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/o/b/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/instagram/o/b/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/instagram/o/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    new-instance v1, Lcom/instagram/ui/dialog/b;

    iget-object v2, p0, Lcom/instagram/o/b/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/facebook/az;->autoupdater_upgrade_available:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->autoupdater_new_version:I

    invoke-virtual {v1, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v1

    sget v2, Lcom/facebook/az;->autoupdater_install:I

    new-instance v3, Lcom/instagram/o/b/c;

    invoke-direct {v3, p0, v0}, Lcom/instagram/o/b/c;-><init>(Lcom/instagram/o/b/a;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 134
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/instagram/common/s/b;->c()Z

    move-result v0

    .line 43
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->b()Z

    move-result v1

    .line 44
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/instagram/o/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/instagram/o/b/a;->g()V

    return-void
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/instagram/o/b/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private e()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/instagram/o/b/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/instagram/o/b/a;->f()J

    move-result-wide v1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    sub-long v5, v3, v1

    const-wide/32 v7, 0x1499700

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    const/4 v0, 0x1

    .line 59
    :cond_1
    sget-object v5, Lcom/instagram/o/b/a;->a:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Check? "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Last check: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private f()J
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/instagram/o/b/a;->c:Landroid/content/SharedPreferences;

    const-string v1, "last_request_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/o/b/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->autoupdater_no_upgrade_available:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->autoupdater_up_to_date:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    new-instance v2, Lcom/instagram/o/b/d;

    invoke-direct {v2, p0}, Lcom/instagram/o/b/d;-><init>(Lcom/instagram/o/b/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 148
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/o/b/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    sget v0, Lcom/instagram/o/b/e;->a:I

    invoke-direct {p0, v0}, Lcom/instagram/o/b/a;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/instagram/o/b/e;->b:I

    invoke-direct {p0, v0}, Lcom/instagram/o/b/a;->a(I)V

    .line 80
    return-void
.end method
