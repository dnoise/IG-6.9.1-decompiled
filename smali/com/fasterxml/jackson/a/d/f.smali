.class public final Lcom/fasterxml/jackson/a/d/f;
.super Ljava/lang/Object;
.source "PackageVersion.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/x;


# static fields
.field public static final a:Lcom/fasterxml/jackson/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-string v0, "2.2.3"

    const-string v1, "com.fasterxml.jackson.core"

    const-string v2, "jackson-core"

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/a/g/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/a/w;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;

    return-void
.end method


# virtual methods
.method public final version()Lcom/fasterxml/jackson/a/w;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/fasterxml/jackson/a/d/f;->a:Lcom/fasterxml/jackson/a/w;

    return-object v0
.end method
