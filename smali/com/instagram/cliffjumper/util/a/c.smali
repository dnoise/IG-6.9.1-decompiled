.class public final Lcom/instagram/cliffjumper/util/a/c;
.super Ljava/lang/Object;
.source "PhotoEditFeatureTierUtil.java"


# static fields
.field private static final a:Z

.field private static final b:Lcom/instagram/cliffjumper/util/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/instagram/cliffjumper/util/a/c;->a:Z

    .line 26
    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->c:Lcom/instagram/cliffjumper/util/a/d;

    :goto_1
    sput-object v0, Lcom/instagram/cliffjumper/util/a/c;->b:Lcom/instagram/cliffjumper/util/a/d;

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :cond_1
    sget-boolean v0, Lcom/instagram/cliffjumper/util/a/c;->a:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/instagram/cliffjumper/util/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->b:Lcom/instagram/cliffjumper/util/a/d;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->a:Lcom/instagram/cliffjumper/util/a/d;

    goto :goto_1
.end method

.method public static a()Lcom/instagram/cliffjumper/util/a/d;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/instagram/cliffjumper/util/a/c;->b:Lcom/instagram/cliffjumper/util/a/d;

    return-object v0
.end method
