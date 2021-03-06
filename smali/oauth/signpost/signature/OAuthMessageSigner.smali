.class public abstract Loauth/signpost/signature/OAuthMessageSigner;
.super Ljava/lang/Object;
.source "OAuthMessageSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3db29529c4356102L


# instance fields
.field private transient base64:Lb/a/a/a/a/a;

.field private consumerSecret:Ljava/lang/String;

.field private tokenSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lb/a/a/a/a/a;

    invoke-direct {v0}, Lb/a/a/a/a/a;-><init>()V

    iput-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lb/a/a/a/a/a;

    .line 38
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 72
    new-instance v0, Lb/a/a/a/a/a;

    invoke-direct {v0}, Lb/a/a/a/a/a;-><init>()V

    iput-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lb/a/a/a/a/a;

    .line 73
    return-void
.end method


# virtual methods
.method protected base64Encode([B)Ljava/lang/String;
    .locals 2
    .parameter "b"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lb/a/a/a/a/a;

    invoke-virtual {v1, p1}, Lb/a/a/a/a/a;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method protected decodeBase64(Ljava/lang/String;)[B
    .locals 2
    .parameter "s"

    .prologue
    .line 62
    iget-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->base64:Lb/a/a/a/a/a;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/a/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSignatureMethod()Ljava/lang/String;
.end method

.method public getTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Loauth/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerSecret"

    .prologue
    .line 54
    iput-object p1, p0, Loauth/signpost/signature/OAuthMessageSigner;->consumerSecret:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "tokenSecret"

    .prologue
    .line 58
    iput-object p1, p0, Loauth/signpost/signature/OAuthMessageSigner;->tokenSecret:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public abstract sign(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpParameters;)Ljava/lang/String;
.end method
