.class public Lcom/instagram/strings/StringBridge;
.super Ljava/lang/Object;
.source "StringBridge.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/instagram/strings/StringBridge;->a:Z

    .line 13
    :try_start_0
    const-string v0, "cryptox"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 14
    const-string v0, "scrambler"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 15
    const-string v0, "strings"

    invoke-static {v0}, Lcom/facebook/k/a;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/instagram/strings/StringBridge;->a:Z

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/instagram/strings/StringBridge;->a:Z

    return v0
.end method

.method public static native getInstagramString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getSignatureString([B)Ljava/lang/String;
.end method
